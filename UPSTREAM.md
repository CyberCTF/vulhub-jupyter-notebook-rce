# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `jupyter/notebook-rce` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`jupyter/notebook-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/jupyter/notebook-rce) |
| `base/jupyter-notebook/5.2.2/` | [`base/jupyter-notebook/5.2.2`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/jupyter-notebook/5.2.2): the Dockerfile of `vulhub/jupyter-notebook:5.2.2` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/jupyter-notebook:5.2.2`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

`build/jupyter/Dockerfile` starts from `vulhub/jupyter-notebook:5.2.2` and sets, as `CMD`, the command of Vulhub's compose file (`start-notebook.sh --NotebookApp.token=''`; Isoloom has no `command:`).

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
