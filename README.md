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

Since this website does not have an open account system, feel free to contribute your patch files or git repositories via email: denisebitca at 42l.fr.

Once I get the time, I'll open a pull request crediting you - and I'll send you an email with the pull request so you can keep updated on what's going on.

## License

This entire project is under GPLv3 or later. Check the LICENSE file.
