.PHONY: build install start stop shell update

build:
	docker-compose build

install: build
	docker-compose run --rm install

start: build
	docker-compose up -d nginx postgres adminer php

stop:
	docker-compose down --volumes --remove-orphans

shell: start
	docker-compose exec -u 1000:1000 php bash

update: stop
	git pull origin master