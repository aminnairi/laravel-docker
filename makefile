.PHONY: start build install stop

build:
	docker-compose build

install:
	docker-compose run --rm install

start: build
	docker-compose up -d nginx postgres adminer php

stop:
	docker-compose down --volumes --remove-orphans

shell:
	docker-compose exec php bash