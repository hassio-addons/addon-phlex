ARG BUILD_FROM=hassioaddons/base:7.0.2
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Sets working directory
WORKDIR /opt

# Setup base
RUN \
  apk add --no-cache \
    nginx=1.16.1-r6 \
    php7-curl=7.3.15-r0 \
    php7-fileinfo=7.3.15-r0 \
    php7-fpm=7.3.15-r0 \
    php7-json=7.3.15-r0 \
    php7-opcache=7.3.15-r0 \
    php7-openssl=7.3.15-r0 \
    php7-phar=7.3.15-r0 \
    php7-session=7.3.15-r0 \
    php7-sockets=7.3.15-r0 \
    php7-sqlite3=7.3.15-r0 \
    php7-zip=7.3.15-r0 \
    php7-simplexml=7.3.15-r0 \
    php7-xml=7.3.15-r0 \
  \
  && mkdir -p /opt \
  \
  && curl -J -L -o /tmp/web.zip \
    "https://github.com/d8ahazard/FlexTV/archive/247d30d6c6737e517862710188b302d6a72a673c.zip" \
  \
  && unzip -d /tmp /tmp/web.zip \
  && mv /tmp/FlexTV-*/* /opt \
  \
  && rm -fr /tmp/*

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="FlexTV" \
    io.hass.description="A super-sexy text and voice interface for Plex" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Joakim Sørensen @ludeeus <ludeeus@gmail.com>" \
    org.label-schema.description="A super-sexy text and voice interface for Plex" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="FlexTV" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://community.home-assistant.io/t/home-assistant-community-add-on-flextv/70378?u=frenck" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-phlex/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-phlex" \
    org.label-schema.vendor="Home Assistant Community Add-ons"
