#!/bin/bash

mkdir -p chroot

[ -d chroot/root ] || {
    mkarchroot root base-devel || exit 1
}

cd xo
makechrootpkg -c -r ../chroot -- --sign
