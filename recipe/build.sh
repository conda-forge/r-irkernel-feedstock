#!/bin/bash
export DISABLE_AUTOBREW=1
$R CMD INSTALL --build .

mkdir -p $PREFIX/share/jupyter/kernels/ir
cp inst/kernelspec/* $PREFIX/share/jupyter/kernels/ir/
