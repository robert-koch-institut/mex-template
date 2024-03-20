# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- add review assignment to mex-template itself

### Changes

- improve prompt for project name
- switch from poetry to pdm

### Deprecated

### Removed

### Fixed

- fix finding of rejected cruft files
- fix dependabot pr review assignment
- add missing pytest-xdist dependency
- fix trivy cve scan to work with pdm

### Security

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
