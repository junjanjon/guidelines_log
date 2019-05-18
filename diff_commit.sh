
TODAY=`date +%Y%m%d`
WATCH_FILE_JP=guidelines_jp.html
WATCH_FILE_EN=guidelines_en.html

# git reset --hard HEAD
# git clean -fdx
curl -o ${WATCH_FILE_JP} 'https://developer.apple.com/jp/app-store/review/guidelines/index.html'
git add ${WATCH_FILE_JP}
curl -o ${WATCH_FILE_EN} 'https://developer.apple.com/app-store/review/guidelines/index.html'
git add ${WATCH_FILE_EN}
git diff --exit-code --quiet
if [[ $? -eq 1 ]]; then git commit -m "diff commit $(TODAY)"; fi

