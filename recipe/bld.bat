REM Don't build html docs for this since for some weird reason that fails
"%R%" CMD INSTALL --build --no-html --data-compress=none .
IF %ERRORLEVEL% NEQ 0 exit 1

"%R%" -e "IRkernel::installspec(sys_prefix = TRUE)"
IF %ERRORLEVEL% NEQ 0 exit 1
