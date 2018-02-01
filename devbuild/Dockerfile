FROM logvik/meteord:base
MAINTAINER logvik

ONBUILD RUN sh $METEORD_DIR/lib/install_meteor.sh
ONBUILD COPY ./ /app
ONBUILD RUN sh $METEORD_DIR/lib/build_app.sh