FROM debian:stretch
MAINTAINER logvik

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN sh $METEORD_DIR/init.sh

EXPOSE 80
ENTRYPOINT sh $METEORD_DIR/run_app.sh
