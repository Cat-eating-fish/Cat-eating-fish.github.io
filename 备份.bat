@echo off
cd /d e:\Hexo\blog
echo ===== 正在备份博客源码到 GitHub =====
git add .
set /p msg=输入改动描述（直接回车用默认描述）:
if "%msg%"=="" set msg=更新博客
git commit -m "%msg%"
git push origin main
echo ===== 备份完成！ =====
pause
