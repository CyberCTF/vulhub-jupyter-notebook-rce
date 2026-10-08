# Vulhub's jupyter/notebook-rce (in ../../app/) runs vulhub/jupyter-notebook:5.2.2 with the
# command `start-notebook.sh --NotebookApp.token=''` in its compose file. Isoloom has no
# `command:`, so this image sets the same command. Nothing else differs.
FROM vulhub/jupyter-notebook:5.2.2
CMD ["start-notebook.sh", "--NotebookApp.token="]
