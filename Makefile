SHELL=/bin/bash

build:
	docker build -t politician/elasticmq-docker:0.13.1 .

start: stop
	docker run -d --name elasticmq -p 9324:9324 politician/elasticmq-docker:0.13.1

stop:
	docker stop elasticmq || true
	docker rm elasticmq || true

.PHONY: build
