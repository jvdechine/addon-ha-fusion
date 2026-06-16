#!/usr/bin/with-contenv bashio

export HASS_PORT=$(bashio::core.port)
export HASS_INTERNAL_URL=http://homeassistant:${HASS_PORT}
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

echo "Starting Fusion..."

node server.js
