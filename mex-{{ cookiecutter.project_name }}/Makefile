.PHONY: all setup hooks install lint unit test wheel{% if cookiecutter.containerize %} image run start{% endif %} docs
all: install lint test

SHELL := /bin/bash
.SHELLFLAGS := -ec

LATEST = $(shell git describe --tags $(shell git rev-list --tags --max-count=1))
PWD = $(shell pwd)

setup:
	# install meta requirements system-wide
	@ echo installing requirements; \
	pip --disable-pip-version-check install --force-reinstall -r requirements.txt; \

hooks:
	# install pre-commit hooks when not in CI
	@ if [ -z "$$CI" ]; then \
		pre-commit install; \
	fi; \

install: setup hooks
	# install packages from lock file in local virtual environment
	@ echo installing package; \
	uv sync; \

lint:
	# run the linter hooks from pre-commit on all files
	@ echo linting all files; \
	pre-commit run --all-files; \

unit:
	# run the test suite with all unit tests
	@ echo running unit tests; \
	uv run pytest -m 'not integration'; \

test:
	# run the unit and integration test suites
	@ echo running all tests; \
	uv run pytest --numprocesses=auto --dist=worksteal; \

wheel:
	# build the python package
	@ echo building wheel; \
	uv build --wheel; \

{% if cookiecutter.containerize %}image:
	# build the docker image
	@ echo building docker image mex-{{ cookiecutter.project_name }}:${LATEST}; \
	docker build \
		--tag rki/mex-{{ cookiecutter.project_name }}:${LATEST} \
		--tag rki/mex-{{ cookiecutter.project_name }}:latest .; \

run: image
	# run the service as a docker container
	@ echo running docker container mex-{{ cookiecutter.project_name }}:${LATEST}; \
	docker run \
		--publish 8080:8080 \
		rki/mex-{{ cookiecutter.project_name }}:${LATEST}; \

start:
	# start the service using docker compose
	@ echo start mex-{{ cookiecutter.project_name }}:${LATEST} with compose; \
	docker compose up --build --remove-orphans; \

{% endif %}docs:
	# use sphinx to auto-generate html docs from code
	@ echo generating docs; \
	uv run sphinx-apidoc -f -o docs/source mex; \
	uv run sphinx-build -aE -b dirhtml docs docs/dist; \
