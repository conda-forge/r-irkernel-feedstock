#!/bin/bash
export DISABLE_AUTOBREW=1
$R CMD INSTALL --build .

$R -e "IRkernel::installspec(sys_prefix = TRUE)"
