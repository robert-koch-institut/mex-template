# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- configure renovatebot for mex-template itself
- pdm release plugin as additional requirement for template packages
- github action for releasing a new version in template packages
- add `.web` folder to ignore files for reflex development
- add commit signing to release pipeline
- add more metadata labels to docker file
- add hint to PR template to explain testing for template changes
- configure sensible concurrency rules for all workflows
- add distribution upload step to release pipeline

### Changes

- harmonize git and docker ignore files
- update requirements, actions and sample dependencies
- set fixed versions in toml for renovatebot
- trigger documentation on release pipeline instead of pushed tag
- harmonize cron schedules

### Deprecated

### Removed

- drop npm support from renovate pipeline
- remove non-functional branch restriction from release pipeline
- remove docker workflow and move into release pipeline
- remove stale dependabot cve-scan config

### Fixed

- fix `export-all` and `install-all` pdm scripts
- fix wording of release pipeline title
- fix tagging and pushing docker containers to ghcr.io

### Security

## [0.2.0] - 2024-04-30

### Added

- add review assignment to mex-template itself
- add code of conduct file to mex-template itself
- add badges for open-code and cookiecutter
- add renovate config and github action

### Changes

- improve prompt for project name
- switch from poetry to pdm
- switch order of black and ruff linter, as ruff often complains about issues,
  that are automatically fixed by black
- add tests and ruff cache to dockerignore
- use `WORKFLOW_TOKEN` in cookiecutter job for consistency
- switch json linting to 4-spaces and utf-8
- clean up and expand pdm scripts
- improve and simplify mex.bat and makefile
- update pdm, ruff and pre-commit
- switch version specifiers to exact matches for renovatebot

### Removed

- delete dependabot config

### Fixed

- fix finding of rejected cruft files
- fix dependabot pr review assignment
- add missing pytest-xdist dependency
- fix linting issue in `docs/conf.py`

### Security

- fix trivy cve scan to work with pdm

## [0.1.0] - 2024-03-11

### Added

- create CHANGELOG.md
- configure dependabot updates for github-actions
- add EOF, WS and BOM githooks
- add A, B, PERF and UP ruff linter rule sets
- add pytest-random as dev dependency
- activate random pytest order by default
- add bot user as assignee to dependabot prs
- add workflow to set pr author as assignee for user prs
- let cookiecutter workflow create PRs to run cruft update
- add code of conduct file

### Changes

- update workflow triggers and schedules
- rename cookiecutter workflow main job to `cruft`
- update poetry and pre-commit dependencies
- always tag dependabot prs as `dependabot`
- narrow pull-request workflow trigger to reduce duplicate runs
- update github actions dependencies
- update pre-commit/requirements.txt/poetry dependencies
- set github actions dependabot to weekly

### Fixed

- do not run cve on Dependabot push events
