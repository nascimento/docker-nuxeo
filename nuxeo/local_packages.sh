#!/usr/bin/env bash

# Install packages if exist
if [ -n "$LOCAL_PACKAGES" ]; then
  for pack in $LOCAL_PACKAGES;
  do
    gosu $NUXEO_USER nuxeoctl mp-remove $(basename $pack .zip) --accept yes --quiet
  done
  gosu $NUXEO_USER nuxeoctl mp-install $LOCAL_PACKAGES --accept yes --quiet
fi
