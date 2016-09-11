# unraid-anaconda3-jupyter

This git is used to setup an autorunning Jupyter Notebook Docker based on the continuumio/anaconda3 repository.


The docker run command is:
`docker run -d --name="anaconda3" --net="bridge" --privileged="true" -e TZ="Australia/Perth" -p 9999:9999/tcp -v "/mnt/cache/appdata/anaconda3":"/opt/jupyterprofile":rw -v "/mnt/cache/development":"/opt/notebooks":rw continuumio/anaconda3 /bin/bash -c "wget -O opt/jupyterprofile/start.bash https://github.com/damianolombardo/unraid-anaconda3-ipython/raw/master/start.bash && bash opt/jupyterprofile/start.bash"`