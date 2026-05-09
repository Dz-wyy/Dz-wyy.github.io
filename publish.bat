@echo off
chcp 65001 >nul
echo 一键发布中，请稍候...
hugo
git add .
git commit -m " %date% %time%"
git push origin main
echo 发布成功！稍后 https://Dz-wyy.github.io 即可查看更新。
pause