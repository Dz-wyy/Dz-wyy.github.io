@echo off
chcp 65001 >nul

echo 已有分区: diary, novels, posts (或其他你添加的)
set /p section="请输入分区名（如 diary）: "
set /p title="请输入文章名（如 2025-05-09-心情）: "

rem 如果该分区文件夹不存在就自动创建
if not exist "content\%section%" mkdir "content\%section%"

rem 用 Hugo 生成文章（会自动带 Front Matter）
hugo new content/%section%/%title%.md

rem 用默认程序打开生成的文件，就是你的 MilkUp 啦
start "" "content\%section%\%title%.md"