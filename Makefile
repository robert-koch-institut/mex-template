.PHONY: all setup hooks install linter
all: install linter

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
	pdm install; \

linter:
	# run the linter hooks from pre-commit on all files
	@ echo linting all files; \
	pre-commit run --all-files; \
