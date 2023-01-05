# docker-compose image for Chyrp Lite

[Chyrp Lite](https://github.com/xenocrat/chyrp-lite) is a MIT licensed blogging software written in PHP.

This repository, made for the Miaoute server structure, can be slightly modified to work elsewhere.

Replace all mentions of mounting on directory /srv with your own structure inside docker-compose.yaml.

Chyrp Lite is exposed by default to port 9050 on the host. You can visit it on ``localhost:9050``.

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

Visit ``localhost:9050/install.php`` and use the information you put inside your .env file inside the installation script.

Note: Chyrp URL must be ``127.0.0.1:9050`` instead of ``localhost:9050`` during setup. You can change it later to the website which will host your Chyrp Lite instance, once you are ready to put it online.

Note: the hostname is ``chyrp_db``.

Once setup is done, run ``sudo docker-compose exec chyrp_web rm /app/install.php``.

## Updating

For now, to update, you have to do this:
```bash
sudo docker-compose exec chyrp_web git pull
```

Then, go on ``localhost:9050/upgrade.php``.

## Contributing

Since this website does not have an open account system, feel free to contribute your patch files or git repositories via email: denisebitca at 42l.fr.

Once I get the time, I'll open a pull request crediting you - and I'll send you an email with the pull request so you can keep updated on what's going on.
