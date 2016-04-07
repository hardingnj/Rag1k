# biipy example run script
# Docker image for bioinformatics analysis.
# (to use xhost you will need to run xhost+, see warnings
# about insecurity.)

version=v0.1
XSOCK=/tmp/.X11-unix/X0
docker run -d \
  -v ${HOME}/git:/home/git \
  -v $XSOCK:$XSOCK \
  -p 8787:8888 \
  --name rag1k \
  -e "docker_image=$version" \
  rag1k
