@echo off
set /p type="请输入类型 (novel/diary/post): "
set /p name="请输入文章名称: "
hugo new content/%type%/%name%.md
start notepad content/%type%/%name%.md