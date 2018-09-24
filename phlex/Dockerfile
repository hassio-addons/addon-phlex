ARG BUILD_FROM=hassioaddons/base:2.3.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Sets working directory
WORKDIR /opt

# Setup base
RUN \
  apk add --no-cache \
    apache2-utils=2.4.34-r0 \
    nginx=1.14.0-r1 \
    php7-curl=7.2.10-r0 \
    php7-fileinfo=7.2.10-r0 \
    php7-fpm=7.2.10-r0 \
    php7-json=7.2.10-r0 \
    php7-opcache=7.2.10-r0 \
    php7-openssl=7.2.10-r0 \
    php7-phar=7.2.10-r0 \
    php7-session=7.2.10-r0 \
    php7-sockets=7.2.10-r0 \
    php7-sqlite3=7.2.10-r0 \
    php7-zip=7.2.10-r0 \
    php7-simplexml=7.2.10-r0 \
    php7-xml=7.2.10-r0 \
  && apk add --no-cache --virtual .build-dependencies \
    git=2.18.0-r0 \
  && git clone --depth=1 \
    https://github.com/d8ahazard/Phlex /opt \
  && apk del --purge .build-dependencies

# Copy root filesystem
COPY rootfs /

# Build arugments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="Phlex" \
    io.hass.description="A super-sexy voice interface for Plex" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Joakim Sørensen @ludeeus <ludeeus@gmail.com>" \
    org.label-schema.description="A super-sexy voice interface for Plex" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Phlex" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://community.home-assistant.io/t/community-hass-io-add-on-phlex/XXXX" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-phlex/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-phlex" \
    org.label-schema.vendor="Community Hass.io Add-ons"
