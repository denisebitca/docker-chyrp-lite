# docker-compose configuration file for Chyrp Lite

[Chyrp Lite](https://github.com/xenocrat/chyrp-lite) is a MIT licensed blogging engine written in PHP.

Chyrp Lite is exposed by default to port 9000 on the host. You can visit it on ``127.0.0.1:9000``.

## Build

```
sudo docker-compose build
```

## Run

Before running, populate the .env file:

```bash
MYSQL_RANDOM_ROOT_PASSWORD=yes
MYSQL_PASSWORD=<password>
MYSQL_USER=<user>
MYSQL_DATABASE=chyrp
```

Then, run like this:

```
sudo docker-compose up -d
```

## Setup

Visit ``http://127.0.0.1:9000/install.php``.

Select "MySQL", the hostname is ``db`` and follow your .env for everything else.

Note: Chyrp URL must be ``http://127.0.0.1:9000`` during setup. You can change it later to the website which will host your Chyrp Lite instance, once you are ready to put it online.

Once setup is done, run ``sudo docker-compose exec web rm /var/www/html/install.php``.

## Updating

```bash
sudo docker-compose exec web upgrade
```

Then, go to ``http://127.0.0.1:9000/upgrade.php``.

## Contributing

If you are on GitHub, feel free to drop a pull request. You can also use the issue tracker.

If you are not on GitHub, feel free to drop a pull request too. Eventually, pull requests will be automatically sent to GitHub.

## License

This entire project is under GPLv3 or later. Check the LICENSE file.
