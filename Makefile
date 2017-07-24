.PHONY: delete build restart log

delete:
	docker-compose stop
	docker-compose rm
	docker image rm dockerjenkins_jenkins:latest
	docker network prune
	docker volume prune
	docker image prune

build:
	docker volume create jenkins_home
	docker-compose up -d
restart:
	docker-compose restart

log:
	docker-compose logs
