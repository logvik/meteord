FROM logvik/meteord:base
MAINTAINER logvik

ONBUILD COPY ./ /app
ONBUILD RUN sh $METEORD_DIR/on_build.sh