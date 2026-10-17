# ArtCraft (storytold) — all repos, one place

One folder per public repository of the **storytold** GitHub org (the team behind [getartcraft.com](https://getartcraft.com/)), all assembled here in a single git repo — added one at a time, one commit each.

- **Source org:** https://github.com/storytold (displayed as *ArtCraft*)
- **Fetched:** 2026-10-17 (`--depth 1` shallow clones)
- **Total:** 66 repos → 66 folders, 66 commits (plus init + this one)
- **Size:** mostly shallow; the big ones are artcraft (~1.37 GB), artcraft-services (~1.31 GB), HyperJail (~1.15 GB). `storyteller-ml` (~1.8 GB) could **not** be downloaded — its folder holds an `UPSTREAM-FETCH-FAILED.md` note instead (see Notes).

Each folder is a snapshot of the repo's default branch as of the fetch date. This monorepo is a local convenience copy — for history, issues and PRs, go to the upstream repo.

## Craft app suite (pure Rust)

| Folder | Repo | Description |
|---|---|---|
| `artcraft` | [storytold/artcraft](https://github.com/storytold/artcraft) | ArtCraft is an intentional crafting engine for artists, designers, and filmmakers |
| `artcraftx` | [storytold/artcraftx](https://github.com/storytold/artcraftx) | ArtCraft-X |
| `placeholder-artcraft` | [storytold/placeholder-artcraft](https://github.com/storytold/placeholder-artcraft) | Artcraft |
| `photocraft` | [storytold/photocraft](https://github.com/storytold/photocraft) | PhotoCraft: open-source photo editor in pure Rust |
| `pdfcraft` | [storytold/pdfcraft](https://github.com/storytold/pdfcraft) | PdfCraft: open-source PDF reader and editor in pure Rust |
| `filmcraft` | [storytold/filmcraft](https://github.com/storytold/filmcraft) | FilmCraft: open-source nonlinear video editor in pure Rust |
| `vectorcraft` | [storytold/vectorcraft](https://github.com/storytold/vectorcraft) | VectorCraft: open-source vector art tool in pure Rust |
| `lightcraft` | [storytold/lightcraft](https://github.com/storytold/lightcraft) | LightCraft: open-source non-destructive photo editor in pure Rust |
| `designcraft` | [storytold/designcraft](https://github.com/storytold/designcraft) | DesignCraft: open-source page and layout design editor in pure Rust |
| `effectcraft` | [storytold/effectcraft](https://github.com/storytold/effectcraft) | EffectCraft: open-source motion graphics and compositing tool in pure Rust |
| `gridcraft` | [storytold/gridcraft](https://github.com/storytold/gridcraft) | GridCraft: open-source clean-room spreadsheet (Excel-style) in pure Rust |
| `cadcraft` | [storytold/cadcraft](https://github.com/storytold/cadcraft) | CADCraft: computer-aided design and drafting, AutoCAD-style in pure Rust |
| `deckcraft` | [storytold/deckcraft](https://github.com/storytold/deckcraft) | open-source clean-room reimplementation of Microsoft PowerPoint in pure Rust |
| `soundcraft` | [storytold/soundcraft](https://github.com/storytold/soundcraft) | open-source clean-room reimplementation of Avid Pro Tools in pure Rust |
| `wordcraft` | [storytold/wordcraft](https://github.com/storytold/wordcraft) | open-source clean-room reimplementation of Microsoft Word in pure Rust |
| `figcraft` | [storytold/figcraft](https://github.com/storytold/figcraft) | FigCraft: interface design and prototyping, open-source clean-room reimplementation |
| `AniCraft` | [storytold/AniCraft](https://github.com/storytold/AniCraft) | (upstream repo is EMPTY, no commits) |
| `photocraft-corpus` | [storytold/photocraft-corpus](https://github.com/storytold/photocraft-corpus) | Test data for photocraft |
| `craft-fonts` | [storytold/craft-fonts](https://github.com/storytold/craft-fonts) | Fonts for the Crafting Apps |
| `indd-utils` | [storytold/indd-utils](https://github.com/storytold/indd-utils) | Read INDD files without InDesign; convert to IDML |
| `craft-libs` | [storytold/craft-libs](https://github.com/storytold/craft-libs) | Rust libraries for the Craft Apps |
| `craft-common-actions` | [storytold/craft-common-actions](https://github.com/storytold/craft-common-actions) |  |
| `craft-ai-integrations` | [storytold/craft-ai-integrations](https://github.com/storytold/craft-ai-integrations) | Interim AI layer for the Craft apps |
| `craft-repo-status-app` | [storytold/craft-repo-status-app](https://github.com/storytold/craft-repo-status-app) | See the status of PRs, builds, etc. |
| `craft-launcher` | [storytold/craft-launcher](https://github.com/storytold/craft-launcher) | The Craft App Launcher |
| `craft-launcher-assets` | [storytold/craft-launcher-assets](https://github.com/storytold/craft-launcher-assets) | Pictures ArtCraft Launcher downloads at run time |
| `crafthub` | [storytold/crafthub](https://github.com/storytold/crafthub) | (upstream repo is EMPTY, no commits) |
| `craft-contrib` | [storytold/craft-contrib](https://github.com/storytold/craft-contrib) | (upstream repo is EMPTY, no commits) |
| `winit` | [storytold/winit](https://github.com/storytold/winit) | Window handling library in pure Rust |
| `winprint.rs` | [storytold/winprint.rs](https://github.com/storytold/winprint.rs) | A crate for printing to a Windows printer device using Windows API |

## AI voice & TTS

| Folder | Repo | Description |
|---|---|---|
| `torchscript-models` | [storytold/torchscript-models](https://github.com/storytold/torchscript-models) | Create JIT libtorch models from pytorch models |
| `voder-proxy` | [storytold/voder-proxy](https://github.com/storytold/voder-proxy) | proxy to the backend voder/tts_service |
| `realtime-voice-conversion` | [storytold/realtime-voice-conversion](https://github.com/storytold/realtime-voice-conversion) | Stream audio from the mic to the model to the speaker |
| `discord-vocodes` | [storytold/discord-vocodes](https://github.com/storytold/discord-vocodes) |  |
| `redirect-vocodes` | [storytold/redirect-vocodes](https://github.com/storytold/redirect-vocodes) | Netlify redirect vo.codes -> fakeyou.com |
| `storyteller-ml` | [storytold/storyteller-ml](https://github.com/storytold/storyteller-ml) | Tacotron core, eventually with more models — **fetch failed**, folder holds `UPSTREAM-FETCH-FAILED.md` |
| `fakeyou-recast` | [storytold/fakeyou-recast](https://github.com/storytold/fakeyou-recast) |  |
| `vits-finetuning` | [storytold/vits-finetuning](https://github.com/storytold/vits-finetuning) |  |
| `FineTrainers-Conditioning` | [storytold/FineTrainers-Conditioning](https://github.com/storytold/FineTrainers-Conditioning) |  |

## Unreal Engine & 3D

| Folder | Repo | Description |
|---|---|---|
| `point-generator` | [storytold/point-generator](https://github.com/storytold/point-generator) | DEPRECATED generate points to send to the unreal engine demo |
| `cloudcam` | [storytold/cloudcam](https://github.com/storytold/cloudcam) | Handles polling the cameras and generating the pointclouds |
| `k4a-sys-temp` | [storytold/k4a-sys-temp](https://github.com/storytold/k4a-sys-temp) | A patched version of k4a-sys that builds on linux |
| `Azure-Kinect-Sample-for-Unity` | [storytold/Azure-Kinect-Sample-for-Unity](https://github.com/storytold/Azure-Kinect-Sample-for-Unity) |  |
| `CloudCamPlugin` | [storytold/CloudCamPlugin](https://github.com/storytold/CloudCamPlugin) | UE Plugin: Renders point clouds sent via the cloudcam program |
| `UnrealZeroMQ` | [storytold/UnrealZeroMQ](https://github.com/storytold/UnrealZeroMQ) | ZeroMQ plugin for UE4 |
| `EventCenterPlugin` | [storytold/EventCenterPlugin](https://github.com/storytold/EventCenterPlugin) | UE Plugin: Bind Redis PubSub-based events (WIP) |
| `StreamTwo` | [storytold/StreamTwo](https://github.com/storytold/StreamTwo) | Unreal Engine Project for the second stream |
| `RuntimeAudioImporter` | [storytold/RuntimeAudioImporter](https://github.com/storytold/RuntimeAudioImporter) | Runtime Audio Importer plugin for Unreal Engine 4 (mp3, wav) |
| `RuntimeFilesDownloader` | [storytold/RuntimeFilesDownloader](https://github.com/storytold/RuntimeFilesDownloader) | Runtime Files Downloader plugin for Unreal Engine |
| `ActorSpawningPlugin` | [storytold/ActorSpawningPlugin](https://github.com/storytold/ActorSpawningPlugin) | UE Plugin: Spawn actors and more in-engine |
| `LiveScan3D` | [storytold/LiveScan3D](https://github.com/storytold/LiveScan3D) | real time 3D reconstruction using multiple Azure Kinect |
| `UE4-OSC` | [storytold/UE4-OSC](https://github.com/storytold/UE4-OSC) | OSC plugin for Unreal Engine 4 Blueprints |
| `motion-capture-data` | [storytold/motion-capture-data](https://github.com/storytold/motion-capture-data) | Data from mocap sessions |
| `xsens-packet-send` | [storytold/xsens-packet-send](https://github.com/storytold/xsens-packet-send) | Send XSENS packets (from Wireshark) to Unreal without Xsens |
| `AnimationTest` | [storytold/AnimationTest](https://github.com/storytold/AnimationTest) | UE5 VTuber show HyperJail |
| `HyperJail` | [storytold/HyperJail](https://github.com/storytold/HyperJail) | HyperJail is a UE5-powered VTubing Experiment |
| `storyteller-bevy` | [storytold/storyteller-bevy](https://github.com/storytold/storyteller-bevy) | Bevy exploration |
| `bevy-mocap` | [storytold/bevy-mocap](https://github.com/storytold/bevy-mocap) |  |
| `hanashi-graphics-demo` | [storytold/hanashi-graphics-demo](https://github.com/storytold/hanashi-graphics-demo) | demo of mrDIMAS fyrox wasm |
| `spark` | [storytold/spark](https://github.com/storytold/spark) | An advanced 3D Gaussian Splatting renderer for THREE.js |

## Web & services

| Folder | Repo | Description |
|---|---|---|
| `artcraft-services` | [storytold/artcraft-services](https://github.com/storytold/artcraft-services) | backend, web frontend, etc. |
| `cloud-worker` | [storytold/cloud-worker](https://github.com/storytold/cloud-worker) |  |

## Infra & misc

| Folder | Repo | Description |
|---|---|---|
| `terraform-aws-observability-accelerator` | [storytold/terraform-aws-observability-accelerator](https://github.com/storytold/terraform-aws-observability-accelerator) | Open source project to help accelerate and ease observability setup on AWS environments |
| `irsa-manager` | [storytold/irsa-manager](https://github.com/storytold/irsa-manager) |  |
| `github-media` | [storytold/github-media](https://github.com/storytold/github-media) | Videos for Github READMEs, etc. |
| `html_test` | [storytold/html_test](https://github.com/storytold/html_test) | test |

## Install just one folder

You don't need the whole thing. Use `install-one.sh` (works from a local copy of this repo, or after pushing it to a remote):

```bash
./install-one.sh <folder-name> [dest-dir | repo-url-or-path] [dest-dir]

# examples
./install-one.sh redirect-vocodes                                   # from this checkout -> ./redirect-vocodes-install
./install-one.sh redirect-vocodes /tmp/rv-install                   # pick your own destination
./install-one.sh spark https://github.com/<you>/artcraft-all.git ./spark   # from a pushed remote
```

Under the hood:
- From a **local** copy (the default): it extracts just that folder with `git archive` — instant, tiny.
- From a **remote URL** (after pushing this repo somewhere): plain git sparse-checkout (`git clone --filter=blob:none --sparse <url>`, then `git sparse-checkout set --no-cone <folder>`).

Tip: to get the folder list, see `repos.json` or the tables above.

## Notes

- `AniCraft`, `crafthub` and `craft-contrib` had **no commits upstream** as of 2026-10-17 — their folders hold an `UPSTREAM-EMPTY.md` note instead.
- If a fetch ever failed, its folder holds an `UPSTREAM-FETCH-FAILED.md` note with the repo URL — the folder layout stays complete either way.
