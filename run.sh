# biipy example run script
# Docker image for bioinformatics analysis.
# (to use xhost you will need to run xhost+, see warnings
# about insecurity.)

biipy_version=v0.7
#docker pull cggh/biipy:${biipy_version}
XSOCK=/tmp/.X11-unix/X0
docker run -d \
  -v ${HOME}:/home \
  -v /data:/data \
  -v $XSOCK:$XSOCK \
  -p 31555:8888 \
  --name rtest \
  -e "docker_image=$biipy_version" \
  rtest
