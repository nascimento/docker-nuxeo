#!/usr/bin/env bash

# Install packages if exist
if [ -n "$LOCAL_PACKAGES" ]; then
  gosu $NUXEO_USER nuxeoctl mp-install $LOCAL_PACKAGES
fi
