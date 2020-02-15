#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: FlexTV
# Configures FlexTV
# ==============================================================================

if ! bashio::fs.file_exists '/data/config.php'; then
    cp /opt/default_config.php /data/config.php
fi

ln -sf /data/config.php /opt/rw/config.php
chown nginx:nginx /data/config.php
