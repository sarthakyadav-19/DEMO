@echo off
title Website Updater

cd /d "%~dp0"

echo.
echo ========================================
echo       CLOTHING WEBSITE UPDATER
echo ========================================
echo.

echo Current folder:
cd
echo.

if not exist ".git" (
    echo ERROR: This folder is not a Git repository.
    echo Make sure this BAT file is inside:
    echo E:\Desktop\SARTHAK\PROJECTS
    echo.
    pause
    exit /b
)

echo [1/3] Adding changes...
git add .

echo.
echo [2/3] Saving changes...
git commit -m "Website update"

echo.
echo [3/3] Uploading to GitHub...
git push

echo.
echo ========================================
echo              FINISHED
echo ========================================
echo.

pause