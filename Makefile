NAME=ansible_project

DOCKER_COMPOSE=docker-compose -f
SRCS=backend/docker-compose.yml

all: up

up:
	$(DOCKER_COMPOSE) $(SRCS) up --build -d

down:
	$(DOCKER_COMPOSE) $(SRCS) down

fclean: down

re: fclean up

.PHONY: up down fclean re