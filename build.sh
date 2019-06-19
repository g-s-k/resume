#!/bin/sh

docker run \
       --mount src=$TRAVIS_BUILD_DIR/src,target=/usr/src/tex,type=bind \
       dxjoke/tectonic-docker \
       /bin/sh -c "tectonic Kaplan_George_resume.tex"
