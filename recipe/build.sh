#!/bin/bash
export FFLAGS=${FFLAGS}" -ffree-line-length-none -I${SRC_DIR}/symlib/src"
cd src

make
make enum.x
make polya.x
make makestr.x
# make 2Dplot.x
# make convert_structures_to_enumformat.x
# make compare_enum_files.x
make find_structure_in_list.x
make makestr.2d

mkdir -p ${PREFIX}/bin
cp enum.x ${PREFIX}/bin/enum.x
cp polya.x ${PREFIX}/bin/polya.x
cp makestr.x ${PREFIX}/bin/makestr.x
# cp 2Dplot.x ${PREFIX}/bin/2Dplot.x
# cp convert_structures_to_enumformat.x ${PREFIX}/bin/convert_structures_to_enumformat.x
# cp compare_enum_files.x ${PREFIX}/bin/compare_enum_files.x
cp find_structure_in_list.x ${PREFIX}/bin/find_structure_in_list.x
cp makestr.2d ${PREFIX}/bin/makestr.2d
