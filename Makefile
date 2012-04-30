REPORTER = dot

all: coffee

coffee:
	@coffee -bc lib

test: all
	@NODE_ENV=test ./node_modules/.bin/mocha --reporter $(REPORTER)

.PHONY: test all coffee