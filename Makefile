all:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker system prune
	docker-compose -f ./srcs/docker-compose.yml down

re: down all

.PHONY: all down re
