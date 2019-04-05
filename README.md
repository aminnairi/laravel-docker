# laravel-docker

## Installation

```console
$ git clone https://github.com/aminnairi/laravel-docker my-laravel-project
$ cd my-laravel-project
```

## DNS configuration (optional)
```console
$ vim /etc/hosts
```

Append this line at the end.

```
127.0.0.1   laravel.local   www.laravel.local
```

## Laravel Installation

```console
$ make install # OS X & GNU/Linux users
$ docker-compose run --rm install # all users
```

## Start

```console
$ make start # OS X & GNU/Linux users
$ docker-compose up -d php nginx postgres adminer # all users
```

## Stop

```console
$ make stop # OS X & GNU/Linux users
$ docker-compose down # all users
```