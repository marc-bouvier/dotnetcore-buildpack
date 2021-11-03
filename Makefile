.PHONY: test test-scalingo-18 test-scalingo-20

test: test-scalingo-18 test-scalingo-20

test-scalingo-18:
	@echo "Running tests in docker (scalingo-18)..."
	@docker run -v $(shell pwd):/buildpack:ro --rm -e "STACK=scalingo-18" scalingo/scalingo-18 bash -c 'cp -r /buildpack /buildpack_test; cd /buildpack_test/; test/run;'
	@echo ""

test-scalingo-20:
	@echo "Running tests in docker (scalingo-20)..."
	@docker run -v $(shell pwd):/buildpack:ro --rm -e "STACK=scalingo-20" scalingo/scalingo-20 bash -c 'cp -r /buildpack /buildpack_test; cd /buildpack_test/; test/run;'
	@echo ""