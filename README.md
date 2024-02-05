## Autores

- [@diegortx](https://github.com/diegortx)

# Laravel-Nginx-Docker


Initial configure to create a docker with laravel and nginx

|Files paths|
|----------|
|1.  docker|
|1.1 nginx|
|1.1.1 laravel.conf|
|2. docker-compose.yml|
|3  Dockerfile|
|4  set_env|
-------------- 

### Dockerfile
Inside file in first step is change the PHP version

> Find for : `FROM php:x.x-fpm` , and change the version from PHP to your choise.
> 
> Check too if have all dependencies from you project need, if no have insert in the list.
>
_____
 
### docker-compose.yml
Inside this have all configures to create a two containners (`laravel_8`, `nginx`) in this case.

> ***Important*** 
>
> In nginx configure your check if the ports are correct to use the system.
>
> `...`
>
> `ports:`
>
>  ` - (port recibe):(port send)`
>
>  `...`
>
____
### laravel.conf

Inside this have all configure to `nginx` redirect request to `laravel_8:9000` 

>***Important***
>
> Check if `listen 80` is correct;
>
>  `root /var/www/public` is correct path;
>
>  `fastcgi_pass laravel_8:9000` is correct port from `laravel`;
>
_____________

### Running Docker

For running docker in your system, before this configure need install docker in your system [Docker Install Doc](https://docs.docker.com/engine/install/ubuntu/). 

After install Docker need install a project Laravel, for this you check a doc on [Laravel](https://laravel.com/docs/10.x/installation), you no need create other folder you can install in same path the others files. 

After this you runnig this code in same path `docker-compose.yml`:
>
> `docker-compose up -d`
>
_____


## 🚀 About me
>I'm a Full Stack development, lovely learn each day more and practice every days =)

