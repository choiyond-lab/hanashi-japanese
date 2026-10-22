@echo off
chcp 65001 >nul
rem 앱 파일(하나시 일본어-휴대폰용.html)을 고친 뒤 이 파일을 더블클릭하면
rem 배포 폴더를 최신으로 바꾸고 GitHub에 올립니다. 1~2분 뒤 휴대폰 앱에 반영돼요.
cd /d "%~dp0"
copy /y "..\하나시 일본어-휴대폰용.html" "index.html" >nul
copy /y "..\하나시 일본어-휴대폰용.html" "hanashi-offline.html" >nul
git add -A
git commit -m "앱 업데이트" >nul 2>&1 && (
  git push && echo. && echo 올리기 완료: https://choiyond-lab.github.io/hanashi-japanese/
) || echo 바뀐 내용이 없어서 올릴 것이 없어요.
pause
