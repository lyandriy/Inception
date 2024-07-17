COMPOSE = docker compose
COMPOSE_FILE = srcs/docker-compose.yml
PROYEECT_NAME = inception

.PHONY: build down images restart up stop start pause ls

build:
	mkdir -p /home/lyandriy/data/dbvol /home/lyandriy/data/webvol
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) build
down:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) down
images:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) images
restart:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) restart
up:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) up -d
stop:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) stop
start:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) start
pause:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) pause
ls:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) ls
logs:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) logs -f
ps:
	$(COMPOSE) -f $(COMPOSE_FILE) -p $(PROYEECT_NAME) ps
prune:
	docker system prune -af
	docker volume ls -q | xargs -I {} docker volume rm {}
	@sudo rm -rf /home/lyandriy/data/dbvol /home/lyandriy/data/webvol