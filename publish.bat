@echo off
chcp 65001 >nul
echo 正在构建网站...
hugo
echo 正在提交到 Git...
git add .
git commit -m "更新于 %date% %time%"
echo 正在推送到 GitHub...
git push origin main
echo 发布完成！网站将在 1-2 分钟后更新。
pause