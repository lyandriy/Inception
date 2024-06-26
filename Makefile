COMPOSE = docker-compose
COMPOSE_FILE = srcs/docker-compose.yml
PROYEECT_NAME = inception

.PHONY: build down images restart up stop start pause

build:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) build
down:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) down
images:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) images
restart:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) restart
up:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) up
stop:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) stop
start:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) start
pause:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) pause