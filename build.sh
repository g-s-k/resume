#!/bin/sh

mkdir -p build

docker run \
       --mount src=$PWD,target=/usr/src/tex,type=bind \
       dxjoke/tectonic-docker \
       /bin/sh -c "tectonic -o build Kaplan_George_resume.tex"
