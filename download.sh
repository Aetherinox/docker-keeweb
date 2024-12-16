#!/usr/bin/with-contenv bash
# shellcheck shell=bash

# #
#   @project        keeweb
#   @usage          download script for fetching m3u8 and xml
#   @file           /download.sh
#   @repo           https://github.com/Aetherinox/docker-alpine-base
#                   https://github.com/keeweb/keeweb
#                   https://hub.docker.com/repository/docker/aetherinox/alpine-base
#                   https://hub.docker.com/repository/docker/keeweb/keeweb
# #

DATE=$(TZ=${TZ} date '+%m-%d-%Y %H:%M:%S')

# #
#   Run Download
# #

echo -e
echo -e " Start        : Downloading latest ${FILE_NAME}"

# Download
wget -q -O /config/www/${FILE_NAME} ${URL_REPO_BASE}
echo -e "                Getting ${FILE_NAME} › ${URL_REPO_BASE}"

# Download
wget -q -O /config/www/${FILE_NAME} ${URL_REPO_APP}
echo -e "                Getting ${FILE_NAME} › ${URL_REPO_APP}"

echo -e " End          : Finished update at ${DATE}"
