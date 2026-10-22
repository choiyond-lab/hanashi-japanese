@echo off
chcp 65001 >nul
rem 앱 파일을 고친 뒤 이 파일을 더블클릭하면 배포 폴더의 앱을 최신으로 바꿉니다.
cd /d "%~dp0"
copy /y "..\하나시 일본어-휴대폰용.html" "index.html" >nul
copy /y "..\하나시 일본어-휴대폰용.html" "hanashi-offline.html" >nul
echo 배포 폴더를 최신 앱으로 바꿨어요. 이제 이 폴더를 다시 올려 주세요.
echo (휴대폰에서 새 버전이 바로 안 보이면 sw.js 의 VERSION 숫자를 하나 올려 주세요.)
pause
