set image=pokemon
set name=%image%
set host_port=3000
set container_port=3000
set env = ''

docker container run --name %name% -e %env% -p host_port:container_port -v %cd%:/home/rails -d %image% \
&& docker container exec -it %name% bash
