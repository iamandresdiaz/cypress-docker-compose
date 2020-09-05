.PHONY: build
build:
	docker-compose build --no-cache

.PHONY: test
test:
	docker-compose up --abort-on-container-exit --exit-code-from cypress

.PHONY: e2e
e2e: build test
	@echo "######################################################"
	@echo ""
	@echo "Done, now open /cypress/videos to see video recordings"
	@echo "Done, now open /cypress/screenshots to see screenshots"
	@echo ""
	@echo "######################################################"
