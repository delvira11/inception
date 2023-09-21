all :
	docker-compose -f srcs/docker-compose.yml up --build

down :
	docker-compose -f srcs/docker-compose.yml down

re : down all

.PHONY : all down re