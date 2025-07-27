#!/bin/bash
docker run --gpus all \
--name genesis_2 \
-e DISPLAY=$DISPLAY \
-v /dev/dri:/dev/dri \
-v /tmp/.X11-unix/:/tmp/.X11-unix \
-v /home/wkym/docker_env/genesis/script:/workspace/src \
-p 6006:6006 \
-it \
genesis


# #!/bin/bash
# docker run \
# -e RESOLUTION=1920x1080 \
# --name genesis_test \
# -p 15900:5900 \
# -p 13389:3389 \
# -p 6060:80 \
# --shm-size=512m \
# --privileged \
# --gpus all \
# --env DISPLAY=${DISPLAY} \
# --volume /tmp/.X11-unix:/tmp/.X11-unix \
# -it \
# genesis_test