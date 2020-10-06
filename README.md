# wslUtils

## Abst.

- Learning DOS CMD(bat)
- Simple Image Backup Script for WSL

## Scripts

- `wsl-export.bat [DistName]` Output to `DISTNAME_YYYYMMDD-HHMM.tar.gz` at a Defind Location.
- `wsl-import.bat [WSL-VER] [CUSTOM_DIST_NAME] [TAR_FILE_PATH] [INSTALL_LOCATION]`

## Example

```dos
> wsl-export.bat Ubuntu-18.04
START EXPORT Ubuntu-18.04 TO D:\Linux\wsl-backup.d\Ubuntu-18.04_20201007_0551.tar.gz
DONE!

> wsl-import.bat 2 Ubuntu-18.04-Secondary D:\Linux\wsl-backup.d\Ubuntu-18.04_20201007_0551.tar.gz  D:\Linux\Ubuntu18_2
START IMPORT Ubuntu-18.04 TO D:\Linux\wsl-backup.d\Ubuntu-18.04_20201007_0551.tar.gz
DONE!
```

## TODO

I am not thinking(idea).
