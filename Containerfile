FROM ghcr.io/ublue-os/bluefin-gdx:lts

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
    
