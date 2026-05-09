@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set /p section="请输入分区名（如 diary）: "
set /p title="请输入文章名（如 2025-05-09-心情）: "

if not exist "content\%section%" mkdir "content\%section%"

hugo new content/%section%/%title%.md

set "file=content\%section%\%title%.md"
powershell -Command "(Get-Content '%file%') -replace 'draft: true', 'draft: false' | Set-Content '%file%' -Encoding UTF8"

start "" "%file%"