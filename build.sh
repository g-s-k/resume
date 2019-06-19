#!/bin/sh

mkdir -vp build

docker run \
       --mount src=$PWD,target=/usr/src/tex,type=bind \
       dxjoke/tectonic-docker \
       /bin/sh -c "tectonic -o build src/Kaplan_George_resume.tex"

cp -v src/index.html build
