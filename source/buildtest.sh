#!/bin/bash
set -ev
cd source
BUILDDIR=$PWD
echo $BUILDDIR
/bin/bash packagize.sh
if [ $# -ne 0 ]; then
    [[ -d $1 ]] || { echo "No such path!"; exit 1; }
    $BUILDDIR=$1
fi
    cd $BUILDDIR/sqlsrv
    phpize
    ./configure
    make
    sudo make install
    cd $BUILDDIR/pdo_sqlsrv
    phpize
    ./configure
    make
    sudo make install

