env ?= dev

all: install

build:
	@yarn --silent build

deploy:
	@yarn --silent deploy

generate-env-local:
	@../node_modules/.bin/env DOCUSAURUS_ > ./.env.local
	@../node_modules/.bin/generate-vars-from-terraform-outputs $(env) ./terraform-to-vars.json >> ./.env.local

install:
	@yarn --silent install

pre-install:
	@true

serve:
	@yarn --silent serve

start:
	@yarn --silent start

test:
	@CI=true yarn --silent test --all --color --detectOpenHandles
test-ci:
	@CI=true yarn --silent test --all --color --detectOpenHandles
test-cov:
	@yarn --silent test --coverage --detectOpenHandles
test-dev:
	@yarn --silent test --all --color --detectOpenHandles

.PHONY: all \
		build \
		deploy \
		generate-env-local \
		install \
		pre-install \
		serve \
		start \
		test test-ci test-cov test-dev