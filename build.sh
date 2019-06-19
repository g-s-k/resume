#!/bin/sh

docker run \
       --mount src=$PWD,target=/usr/src/tex,type=bind \
       dxjoke/tectonic-docker \
       /bin/sh -c "tectonic Kaplan_George_resume.tex"
