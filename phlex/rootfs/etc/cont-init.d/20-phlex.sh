#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: Phlex
# Configures Phlex
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

if ! hass.file_exists '/data/config.php'; then
    cp /opt/default_config.php /data/config.php
fi

ln -sf /data/config.php /opt/rw/config.php
chown nginx:nginx /data/config.php