#!/usr/bin/env bash

docker run -it \
  --user=$USER \
  --env="DISPLAY" \
  --workdir="/home/$USER" \
  --volume="/home/$USER:/home/$USER" \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume="/dev/nvidia0:/dev/nvidia0" \
  --volume="/dev/nvidia1:/dev/nvidia1" \
  --volume="/dev/nvidiactl:/dev/nvidiactl" \
  --volume="/dev/nvidia-modeset:/dev/nvidia-modeset" \
  --volume="/dev/urandom:/dev/urandom" \
  --volume="/dev/video0:/dev/video0" \
  --volume="/dev/shm:/dev/shm/"
  ${1}
  /usr/bin/zoom

