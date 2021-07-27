#!/bin/bash
export FFLAGS=${FFLAGS}" -ffree-line-length-none -I${SRC_DIR}/symlib/src"
cd src

make
make enum.x
make polya.x
make makestr.x

mkdir -p ${PREFIX}/bin
cp enum.x ${PREFIX}/bin/enum.x
cp polya.x ${PREFIX}/bin/polya.x
cp makestr.x ${PREFIX}/bin/makestr.x
