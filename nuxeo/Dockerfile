FROM nuxeo:8.3

RUN echo "deb http://httpredir.debian.org/debian jessie non-free" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends libfaac-dev git libreoffice

WORKDIR /tmp
# Build ffmpeg
ENV BUILD_YASM true
ENV LIBFAAC true
RUN git clone https://github.com/nuxeo/ffmpeg-nuxeo.git
WORKDIR ffmpeg-nuxeo
RUN ./prepare-packages.sh \
 && ./build-yasm.sh \
 && ./build-x264.sh \
 && ./build-libvpx.sh \
 && ./build-ffmpeg.sh \
 && cd /tmp \
 && rm -Rf ffmpeg-nuxeo \
 && rm -rf /var/lib/apt/lists/*

# Custom Packages
COPY ./local_packages /tmp/packages

# EntryPoint
COPY local_packages.sh /docker-entrypoint-initnuxeo.d/local_packages.sh
COPY amazon_s3.sh /docker-entrypoint-initnuxeo.d/amazon_s3.sh

# OpenId
COPY arizona_openid/openid-config.xml /opt/nuxeo/server/nxserver/config/openid-config.xml

WORKDIR /

COPY nuxeo.conf ./
