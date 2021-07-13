#!/bin/sh

set -e
# set -ex

function print_error() {
    echo -e "\e[31mERROR: ${1}\e[m"
}

function print_info() {
    echo -e "\e[36mINFO: ${1}\e[m"
}

OUTPUT=$(pwd)

FOLDER_NAME=$1
ARCH=$2
TPK_NAME=$3

mkdir -p "/tool/$ARCH/$TPK_NAME"
cp -r "$FOLDER_NAME/**" "/tool/$ARCH/$TPK_NAME"
print_info "packing for folder \"$FOLDER_NAME\""
print_info "use arch \"$ARCH\""

cd /tool

print_info 'start packing'

./makeapp "$ARCH/$TPK_NAME"

cp "dist/$ARCH/*.tp" "$OUTPUT"

print_info 'packing success'