# Jupyter Notebook Unauthenticated Access

[Vulhub](https://vulhub.org)'s [`jupyter/notebook-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/jupyter/notebook-rce) environment, by
phith0n and the Vulhub contributors: Jupyter Notebook 5.2.2 started with an empty token, so anyone who reaches it opens a terminal or runs code. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/jupyter-notebook:5.2.2` with the command of Vulhub's compose file ([`build/jupyter/`](build/jupyter)); the environment folder is vendored in [`app/`](app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| jupyter | Jupyter Notebook 5.2.2 on port 8888 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8888/ (no token). The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/jupyter/notebook-rce/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
