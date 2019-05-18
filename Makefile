
TODAY := $(shell date +%Y%m%d)
WATCH_FILE := 'guidelines.html'

make_commit:
	git reset --hard HEAD
	git clean -fdx
	curl -o $(WATCH_FILE) 'https://developer.apple.com/jp/app-store/review/guidelines/index.html'
	git add $(WATCH_FILE)
	git diff --exit-code --quiet
	if [[ $? -eq 1 ]]; then git commit -m "diff commit $(TODAY)"; fi
