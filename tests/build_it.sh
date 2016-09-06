#!/bin/bash
docker build -t logvik/meteord:base ../base
docker build -t logvik/meteord:onbuild ../onbuild
docker build -t logvik/meteord:devbuild ../devbuild
docker build -t logvik/meteord:binbuild ../binbuild
