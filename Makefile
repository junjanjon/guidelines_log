
TODAY := $(shell date +%Y%m%d)

dairy:
	curl -O 'https://developer.apple.com/jp/app-store/review/guidelines/index.html'; xmllint --xpath '//main' --html index.html > main.html 2> /dev/null
	git add main.html
	git commit -m "add $(TODAY)"
	git push
