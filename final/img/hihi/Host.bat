attrib -r %WINDIR%\system32\drivers\etc\hosts
@ECHO OFF
IF "%OS%"=="Windows_NT" (
SET HOSTFILE=%windir%\system32\drivers\etc\hosts
) ELSE (
SET HOSTFILE=%windir%\hosts
)
ECHO 127.0.0.1 activate.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 activate.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 practivate.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 lmlicenses.wip4.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 lm.licenses.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 na1r.services.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 hlrcv.stage.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 genuine.adobe.com>> %HOSTFILE%
ECHO 127.0.0.1 prod.adobegenuine.com>> %HOSTFILE%
attrib +r %WINDIR%\system32\drivers\etc\hosts
IPCONFIG -flushdns
CLS
ECHO all sites have been added to your hosts file
ECHO.
ECHO Provided by: Vn-Windows
ECHO.
Exit