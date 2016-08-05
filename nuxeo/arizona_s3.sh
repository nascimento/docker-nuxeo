#!/usr/bin/env bash

echo "nuxeo.s3storage.region=${NUXEO_S3_REGION:=sa-east-1}" >> $NUXEO_CONF

echo "nuxeo.s3storage.bucket=${NUXEO_S3_BUCKET:=teste-nuxeo}" >> $NUXEO_CONF
echo "nuxeo.s3storage.bucket_prefix=${NUXEO_S3_BUCKET_PREFIX:=nuxeo}" >> $NUXEO_CONF

echo "nuxeo.s3storage.awsid=${NUXEO_S3_ID:=AKIAI2MY6I73CJ2IEAEQ}" >> $NUXEO_CONF
echo "nuxeo.s3storage.awssecret=${NUXEO_S3_SECRET:=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}" >> $NUXEO_CONF

echo "nuxeo.s3storage.cachesize=${NUXEO_S3_CACHESIZE:=100MB}" >> $NUXEO_CONF
echo "nuxeo.s3storage.cachecount=${NUXEO_S3_CACHECOUNT:=10000}" >> $NUXEO_CONF
echo "nuxeo.s3storage.cacheminage=${NUXEO_S3_CACHEIMAGE:=3600}" >> $NUXEO_CONF

echo "nuxeo.s3storage.downloadfroms3=${NUXEO_S3_DOWNLOAD:=true}" >> $NUXEO_CONF
echo "nuxeo.s3storage.downloadfroms3.expire=${NUXEO_S3_DOWNLOAD_EXPIRE:=600}" >> $NUXEO_CONF

echo "nuxeo.s3storage.connection.max=${NUXEO_S3_CONNECTION_MAX:=50}" >> $NUXEO_CONF
echo "nuxeo.s3storage.connection.retry=${NUXEO_S3_CONNECTION_RETRY:=3}" >> $NUXEO_CONF
echo "nuxeo.s3storage.connection.timeout=${NUXEO_S3_CONNECTION_TIMEOUT:=50000}" >> $NUXEO_CONF
echo "nuxeo.s3storage.socket.timeout=${NUXEO_S3_SOCKET:=50000}" >> $NUXEO_CONF

# No caso de usar cloudfront
# echo "nuxeo.s3storage.endpoint=${NUXEO_S3_ENDPOINT}" >> $NUXEO_CONF

# Caso for um S3BinaryManager Customizado
# echo "nuxeo.s3storage.binarymanager=${NUXEO_S3_BINARYMANAGER:=org.nuxeo.ecm.core.storage.sql.S3BinaryManager}" >> $NUXEO_CONF
