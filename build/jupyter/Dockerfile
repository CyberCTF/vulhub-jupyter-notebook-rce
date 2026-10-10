# Vulhub's jupyter/notebook-rce (in ../../app/) runs vulhub/jupyter-notebook:5.2.2 with the
# command `start-notebook.sh --NotebookApp.token=''` in its compose file. Isoloom has no
# `command:`, so this image sets the same command. Nothing else differs.
FROM vulhub/jupyter-notebook:5.2.2
CMD ["start-notebook.sh", "--NotebookApp.token="]
# CyberCTF: an empty /ctf owned by jovyan (the user the image runs as); the flag volume is
# created from it, so ctf/flag.sh (run as jovyan) can write the flag.
USER root
RUN mkdir -p /ctf && chown jovyan /ctf
USER jovyan
