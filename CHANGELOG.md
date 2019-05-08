**0.4.0**:
- New Make command to easily restart the containers.
- Unecessary public exposed ports for postgres & php-fpm have been removed in order to preventing further conflicts with other userland applications.
- Created a php user and allowing the www-data make sure that the www-data and php users are able to read/write files in the laravel folders.
- The user definition in the makefile has been removed.
- The database persistence is now in place and allows to safely stop the container and shutdown the computer without losing the database informations stored.

**0.3.0**:
- Server responses are now compressed if the client supports the GZIP algorithm.

**0.2.1**:
- Fixed an issue where the generated files from the php artisan console had the wrong permissions.

**0.2.0**:
- Added a proxy for using the database.laravel.local domain to access the database administration panel.

**0.1.0**:
- Adminer's server field is now automatically pre-field with the correct name of the PostgreSQL's container.

**0.0.2**:
- Fixed an issue where the NGINX configuration was wrong and do not allow for the Laravel router to operate correctly.

**0.0.1**:
- Initial release.