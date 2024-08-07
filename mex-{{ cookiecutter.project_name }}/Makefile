.PHONY: all test setup hooks install linter pytest wheel image run start docs
all: install test
test: linter pytest

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
	pdm install-all; \

linter:
	# run the linter hooks from pre-commit on all files
	@ echo linting all files; \
	pdm lint; \

pytest:
	# run the pytest test suite with all unit tests
	@ echo running unit tests; \
	pdm unit; \

wheel:
	# build the python package
	@ echo building wheel; \
	pdm wheel; \

image:
	# build the docker image
	@ echo building docker image mex-{{ cookiecutter.project_name }}:${LATEST}; \
	export DOCKER_BUILDKIT=1; \
	docker build \
		--tag rki/mex-{{ cookiecutter.project_name }}:${LATEST} \
		--tag rki/mex-{{ cookiecutter.project_name }}:latest .; \

run: image
	# run the service as a docker container
	@ echo running docker container mex-{{ cookiecutter.project_name }}:${LATEST}; \
	docker run \
		--env MEX_{{ cookiecutter.project_name|upper }}_HOST=0.0.0.0 \
		--publish 8081:8081 \
		rki/mex-{{ cookiecutter.project_name }}:${LATEST}; \

start: image
	# start the service using docker compose
	@ echo start mex-{{ cookiecutter.project_name }}:${LATEST} with compose; \
	export DOCKER_BUILDKIT=1; \
	export COMPOSE_DOCKER_CLI_BUILD=1; \
	docker compose up --remove-orphans; \

docs:
	# use sphinx to auto-generate html docs from code
	@ echo generating docs; \
	pdm doc; \
