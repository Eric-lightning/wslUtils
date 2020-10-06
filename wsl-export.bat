@ECHO OFF
REM ======================================
SET BACKUP_DIR=D:\Linux\wsl-backup.d
REM ======================================

SET IS_USAGE=FALSE
IF "%1" == "/h" SET IS_USAGE=TRUE
IF "%1" == ""   SET IS_USAGE=TRUE
IF %IS_USAGE%==TRUE (
  ECHO usage: %0 [DISTNAME]
  EXIT /B
)

SET DIST_NAME=%1

REM Parse '10/06/2020 Tue' Style
SET CDATE=%date:~6,4%%date:~0,2%%date:~3,2%

SET TEMP_TIME=%time: =0%
SET CTIME=%TEMP_TIME:~0,2%%TEMP_TIME:~3,2%

IF NOT EXIST %BACKUP_DIR% MKDIR %BACKUP_DIR%

SET BACKUP_FULL_PATH=%BACKUP_DIR%\%DIST_NAME%_%CDATE%-%CTIME%.tar.gz

ECHO START EXPORT %DIST_NAME% TO %BACKUP_FULL_PATH%

wsl --export %DIST_NAME%  %BACKUP_FULL_PATH%

ECHO DONE!
