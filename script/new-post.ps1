$blogRoot = "E:\blog\my-blog"   # 改成你的纯英文博客路径
$newFile = "$blogRoot\content\new-post.md"

$template = @"
---
title: "新文章"
date: $(Get-Date -Format 'yyyy-MM-ddTHH:mm:ss+08:00')
draft: false
---

"@

[System.IO.File]::WriteAllText($newFile, $template, [System.Text.UTF8Encoding]::new($true))
Start-Process $newFile