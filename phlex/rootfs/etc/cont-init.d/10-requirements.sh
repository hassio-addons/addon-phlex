#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Phlex
# This files check if all user configuration requirements are met
# ==============================================================================

# Check SSL requirements, if enabled
bashio::config.require.ssl 'ssl' 'certfile' 'keyfile'