.PHONY: all deploy clean

all: dist build

dist:
	git worktree add dist gh-pages

# Replace this rule with whatever builds your project
build:
	yarn build

deploy: all
	cd dist && \
	git add --all && \
	git commit -m "Deploy to gh-pages" && \
	git push origin gh-pages

# Removing the actual dist directory confuses git and will require a git worktree prune to fix
clean:
	rm -rf dist/*
