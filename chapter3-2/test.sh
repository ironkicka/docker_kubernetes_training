#docker container exec -it worker03 docker swarm join \

#docker image tag example/echo:latest localhost:5000/example/echo:latest

#docker image push localhost:5000/example/echo:latest


#docker container exec -it worker01 docker image pull registry:5000/example/echo:latest

#docker container exec -it manager \
#docker service create --replicas 1 --publish 8000:8080 --name echo registry:5000/example/echo:latest

#docker container exec -it manager \
#docker service ps echo | grep Running

#docker container exec -it manager docker network create --driver=overlay --attachable ch03
#docker container exec -it manager docker stack deploy -c /stack/ch03-webapi.yml echo
#
#docker container exec -it manager docker stack deploy -c /stack/visualizer.yml visualizer

#IP=`hostname -i`
#IP=`ipconfig getifaddr en0`
#IFS='.'
#set -- $IP
#IFS=
#SOURCE_IP="$1.$2.%.%"
#echo $SOURCE_IP


#docker container exec -it 89c14ac8e975 \
#docker container exec -it todo_mysql_master.1.zgcgkwhh61yzizahvk0tizzt2 bash

#docker container exec -it manager \
#docker service ps todo_mysql_slave \
#--no-trunc \
#--filter "desired-state=running" \
#--format "docker container exec -it {{.Node}} docker container exec -it {{.Name}}.{{.ID}} bash"

#docker container exec -it manager docker stack deploy -c /stack/todo-app.yml todo_app

docker container exec -it manager docker stack deploy -c /stack/todo-frontend.yml todo_frontend

#docker container exec -it manager docker stack deploy -c /stack/todo-ingress.yml todo_ingress


#docker image build -t ch04/todoweb:latest .
#
#docker image tag ch04/todoweb:latest localhost:5000/ch04/todoweb:latest
#
#docker image push localhost:5000/ch04/todoweb:latest

#docker image build -f Dockerfile-nuxt -t ch04/nginx-nuxt:latest .
#
#docker image tag ch04/nginx-nuxt:latest localhost:5000/ch04/nginx-nuxt:latest
#
#docker image push localhost:5000/ch04/nginx-nuxt:latest

#curl -X GET http://localhost:5000/v2/_catalog

#todowebのsha
#curl -X GET -H "Accept: application/vnd.docker.distribution.manifest.v2+json" -s -D - http://localhost:5000/v2/ch04/todoweb/manifests/latest | grep Docker-Content-Digest:

#todoweb削除
#curl -X DELETE -D - http://localhost:5000/v2/ch04/todoweb/manifests/sha256:04460a5fa24d7fb41bef7f6dfa1d4d85df537f4dbf60ee5fbd47a342a8d48700


#ngin-nuxtの削除
#curl -X GET -H "Accept: application/vnd.docker.distribution.manifest.v2+json" -s -D - http://localhost:5000/v2/ch04/nginx-nuxt/manifests/latest | grep Docker-Content-Digest:
#Docker-Content-Digest: sha256:c8f3ff14bfbd723baefcfc01362ef13771f30a2c307bf0dca6944330138da7b9

#ngin-nuxt削除
#curl -X DELETE -D - http://localhost:5000/v2/ch04/nginx-nuxt/manifests/sha256:c8f3ff14bfbd723baefcfc01362ef13771f30a2c307bf0dca6944330138da7b9

