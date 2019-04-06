# laravel-docker

## Featuring

- PHP with FPM configured out-of-the-box.
- NGINX configured to work in coordination with PHP FPM.
- Laravel installer with a fix for the Laravel's logs & cache folder permissions issues.
- PostgreSQL configured with automatic creation of the necessary database.

## Requirements

- A text editor.
- A command prompt or a terminal emulator.
- [Git command line interface](https://git-scm.com/).
- [Docker](https://www.docker.com/).
- [Docker Compose](https://docs.docker.com/compose/).
- [GNU/Make](https://www.gnu.org/software/make/) (optional, recommended).

## Installation

```console
$ git clone https://github.com/aminnairi/laravel-docker my-laravel-project
$ cd my-laravel-project
```

## DNS configuration (optional, recommended)

```console
$ sudo $EDITOR /etc/hosts                       # OS X & GNU/Linux users
> $EDITOR C:\Windows\System32\Drivers\etc\hosts # Windows users
```

Replace `$EDITOR` with you favorite text editor. Append this line at the end.

```
127.0.0.1   laravel.local   www.laravel.local
```

This will make you able to access your website from either http://laravel.local/ or http://www.laravel.local/.

## Laravel Installation

```console
$ make install                      # OS X & GNU/Linux users
$ docker-compose run --rm install   # all users
```

Laravel's source-files will be located under the `laravel` folder.

## Start

```console
$ make start                                        # OS X & GNU/Linux users
$ docker-compose up -d php nginx postgres adminer   # all users
```

Target | IP Address/Domain | Requires DNS Configuration
---|---|---
Website | http://127.0.0.1/ | No
Website | http://localhost/ | No
Website | http://laravel.local/ | Yes
Website | http://www.laravel.local/ | Yes
Database Administration | http://127.0.0.1:8080/ | No
Database Administration | http://localhost:8080/ | No
Database Administration | http://laravel.local:8080/  | Yes
Database Administration | http://www.laravel.local:8080/  | Yes

Database administration's credentials:

Field | Value
---|---
System | PostgreSQL
Server | postgres
Username | root
Password | root
Database | laravel

## Stop

```console
$ make stop             # OS X & GNU/Linux users
$ docker-compose down   # all users
```

This will stop the database, PHP & the NGINX servers.

## Laravel Artisan Commands

```console
$ make shell                    # OS X & GNU/Linux users
$ docker-compose exec php bash  # all users
```

You are now a Laravel Artisan. Try some commands.

```console
$ php artisan help
```

See [Laravel Artisan Console](https://laravel.com/docs/master/artisan) for more informations.

## Template Update

```console
$ make update               # OS X & GNU/Linux users
$ git pull origin master    # all users
```

The `laravel` folder will remain untouched. Only Docker that are listed in this repository will be updated.