#!/usr/bin/env bash
# install-one.sh — install just ONE folder from the artcraft-all monorepo.
#
# Usage:
#   ./install-one.sh <folder-name> [dest-dir | repo-url-or-path] [dest-dir]
#
# The 2nd argument is flexible: if it looks like a git repo (a URL or a
# directory containing a git repo) it's used as the source; otherwise it's
# the destination directory. The source defaults to this checkout.
#
# - Local source: extracts just the folder via `git archive` (fast, tiny).
# - Remote URL source: sparse-checkout clone (needs a host with filter
#   support, e.g. GitHub).
#
# Examples:
#   ./install-one.sh redirect-vocodes
#   ./install-one.sh redirect-vocodes /tmp/rv-install
#   ./install-one.sh spark https://github.com/<you>/artcraft-all.git ./spark

set -euo pipefail

usage() {
  echo "Usage: ./install-one.sh <folder-name> [dest-dir | repo-url-or-path] [dest-dir]"
  echo "  <folder-name>  one of the 66 folders in artcraft-all (see README.md or repos.json)"
  exit 1
}

if [ "${1:-}" = "" ] || [ "${1:-}" = "-h" ] || [ "${1:-}" = "--help" ]; then
  usage
fi

FOLDER="$1"
case "$FOLDER" in
  *[/\\]*|*..*) echo "Error: folder name must be a plain folder name, got '$FOLDER'." >&2; exit 1 ;;
esac

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$SCRIPT_DIR"
DEST="./${FOLDER}-install"

# Does $1 look like a git repo we can use as a source?
is_repo() {
  case "$1" in
    *://*|*@*:*) return 0 ;;            # URL
  esac
  [ -d "$1/.git" ] && return 0          # local repo checkout
  return 1
}

if [ -n "${2:-}" ]; then
  if is_repo "$2"; then
    REPO="$2"
    [ -n "${3:-}" ] && DEST="$3"
  else
    DEST="$2"
    if [ -n "${3:-}" ]; then
      echo "Error: '$2' is not a git repo, so I treated it as the destination;" >&2
      echo "a 3rd argument ('$3') makes no sense. Drop one of them." >&2
      exit 1
    fi
  fi
fi

folder_exists_in() {  # $1 = repo path or url
  git -C "$1" ls-tree -d --name-only HEAD 2>/dev/null | grep -qx "$FOLDER"
}

case "$REPO" in
  *://*|*@*:*)
    # ---- remote source: sparse-checkout clone ----
    if [ -e "$DEST" ]; then echo "Error: '$DEST' already exists." >&2; exit 1; fi
    echo "Installing folder '$FOLDER' from $REPO into '$DEST' (sparse checkout)..."
    git clone --filter=blob:none --sparse "$REPO" "$DEST"
    if ! folder_exists_in "$DEST"; then
      echo "Error: folder '$FOLDER' does not exist in this monorepo." >&2
      echo "Pick one of the 66 folders listed in README.md (or check repos.json)." >&2
      rm -rf "$DEST"
      exit 1
    fi
    git -C "$DEST" sparse-checkout set --no-cone "$FOLDER"
    echo ""
    echo "Done. '$FOLDER' is installed at: $DEST"
    echo "Tip: git -C $DEST sparse-checkout add <another-folder>  to pull more folders later."
    ;;
  *)
    # ---- local source: fast extract via git archive ----
    if [ ! -d "$REPO/.git" ]; then
      echo "Error: '$REPO' is not a git repo." >&2
      exit 1
    fi
    if ! folder_exists_in "$REPO"; then
      echo "Error: folder '$FOLDER' does not exist in this monorepo." >&2
      echo "Pick one of the 66 folders listed in README.md (or check repos.json)." >&2
      exit 1
    fi
    if [ -e "$DEST" ]; then echo "Error: '$DEST' already exists." >&2; exit 1; fi
    echo "Installing folder '$FOLDER' into '$DEST'..."
    mkdir -p "$DEST"
    git -C "$REPO" archive HEAD "$FOLDER" | tar -x -C "$DEST"
    echo ""
    echo "Done. '$FOLDER' is installed at: $DEST/$FOLDER"
    ;;
esac
