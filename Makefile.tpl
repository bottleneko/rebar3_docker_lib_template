.DEFAULT_GOAL := all

.NOTPARALLEL:

DOCKER := docker
COMPOSE := docker-compose

EXEC := $(COMPOSE) exec workspace

REBAR := $(EXEC) rebar3

.PHONY: all
all: .env workspace-build workspace-up shell

### ==================================================================
### Local environment
### ==================================================================

.PHONY: workspace
workspace:
	$(EXEC) bash

.PHONY: workspace-build
workspace-build:
	$(COMPOSE) build

.PHONY: workspace-build
workspace-up:
	$(COMPOSE) up --detach --remove-orphans

.PHONY: workspace-down
workspace-down:
	$(COMPOSE) down --remove-orphans

.env:
	cp .env.example .env

.PHONY: clean
clean:
	$(REBAR) clean
	rm .env

### ==================================================================
### Development
### ==================================================================

.PHONY: compile
compile:
	$(REBAR) compile

.PHONY: shell
shell:
	$(REBAR) shell

.PHONY: coverage
coverage:
	$(REBAR) do eunit, ct, cover -v

.PHONY: lint
lint:
	$(REBAR) do lint, xref