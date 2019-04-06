# laravel-docker

## Featuring

- PHP with FPM configured out-of-the-box.
- NGINX configured to work in coordination with PHP FPM.
- Laravel installer with a fix for the Laravel's logs & cache folder permissions issues.
- PostgreSQL configured with automatic creation of the necessary database.

## Installation

```console
$ git clone https://github.com/aminnairi/laravel-docker my-laravel-project
$ cd my-laravel-project
```

## DNS configuration (optional)
```console
$ sudo vim /etc/hosts
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

Laravel's source-files will be located under the `laravel` folder.

## Start

```console
$ make start # OS X & GNU/Linux users
$ docker-compose up -d php nginx postgres adminer # all users
```

Go to either on of these addresses to display your website:
- http://127.0.0.1/
- http://localhost/
- http://laravel.local/ (requires DNS configuration)
- http://www.laravel.local/ (requires DNS configuration)

## Stop

```console
$ make stop # OS X & GNU/Linux users
$ docker-compose down # all users
```

## Laravel Artisan Commands

```console
$ make shell # OS X & GNU/Linux users
$ docker-compose exec php bash # all users
```

You are now a Laravel Artisan. Try some commands.

```console
$ php artisan help
```

## Adminer

You can access the graphical database administration panel at the following addresses:
- http://127.0.0.1:8080/
- http://localhost:8080/
- http://laravel.local:8080/
- http://www.laravel.local:8080/

Credentials:
- System    : PostgreSQL
- Server    : postgres
- Username  : root
- Password  : root
- Database  : laravel

## Template Update

```console
$ make update # OS X & GNU/Linux users
$ git pull origin master # all users
```