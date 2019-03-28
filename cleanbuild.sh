#!/bin/bash

mkdir -p chroot

[ -d chroot/root ] || {
    mkarchroot chroot/root base-devel || exit 1
}

cd xo
makechrootpkg -c -r ../chroot
