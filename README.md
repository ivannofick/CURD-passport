# How to install

this repo need requirment like below
```
Requirment :
- PHP 8.1
- Nginx 1.22.0
- Docker version 20.10.21
```


Command Install
- cp .env.dev .env
- composer install
- php artisan key:generate
- cd deployments && docker compose up -d 