FROM logvik/meteord:base
MAINTAINER Logvik

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
