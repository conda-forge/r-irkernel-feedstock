REM Don't build html docs for this since for some weird reason that fails
"%R%" CMD INSTALL --build --no-html --data-compress=none .
if errorlevel 1 exit 1

mkdir "%PREFIX%\share\jupyter\kernels\ir"
if errorlevel 1 exit 1

xcopy /s inst\kernelspec\* "%PREFIX%\share\jupyter\kernels\ir\"
if errorlevel 1 exit 1
