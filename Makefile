all:
	mkdir /home/delvira-/data/database
	mkdir /home/delvira-/data/html
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	rm -r /home/delvira-/data/database
	rm -r /home/delvira-/data/html
	docker system prune
	docker-compose -f ./srcs/docker-compose.yml down

re: down all

.PHONY: all down re
