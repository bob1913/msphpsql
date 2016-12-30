#!/bin/bash
BUILDDIR=$PWD/source
echo $BUILDDIR
cd $BUILDDIR/sqlsrv
make
cd $BUILDDIR/pdo_sqlsrv
make
