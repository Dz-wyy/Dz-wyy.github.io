$blogRoot = "E:\blog\my-blog"
Set-Location $blogRoot
hugo
git add .
git commit -m "更新于 $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
git push origin main
Write-Host "发布完成！" -ForegroundColor Green