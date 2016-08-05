#!/usr/bin/env bash

# Install packages if exist
if [ -n "$NUXEO_ARIZONA_PACKAGES" ]; then
  gosu $NUXEO_USER nuxeoctl mp-install $NUXEO_ARIZONA_PACKAGES --relax=false --accept=true --quiet
fi
