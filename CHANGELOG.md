# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

### Changes

- use standalone mex-release scripts instead of pdm scripts for release and commit signing
- change python build system backend to hatchling
- clean up docker ignore file

### Deprecated

### Removed

### Fixed

- pin pdm to version prior 2.26.2 because that broke our (old) mex-release
- make renovate minimumReleaseAge optional
- migrated pdm plugin scripts to mex cli

### Security

## [1.0.0] - 2025-11-19

### Added

- add colors to pytest output in github actions
- add more ruff linting rules
- start type-checking tests folder by default
- update security policy ahead of major releases
- changes in tests directory trigger mypy pre-commit hook
- add workflow to remind devs to update the changelog when making a PR

### Changes

- update gitignore and dockerignore files

### Removed

- start removing pdm-specifics
- remove renovatebot PR footer

### Fixed

- fixed release pipeline permissions
- fix showing first line of each cookiecutter reject file
- pin hishel to below version 1
- fix cookie link in sphinx docs footer

## [0.5.0] - 2025-04-29

### Added

- add pre-commit hooks and linting CI workflow

### Changes

- update gitignores with `locked-requirements.txt` and invenio-specifics
- update versions in requirements.txt, pyproject.toml and pre-commit

### Fixed

- fix project page link on documentation pages
- use proper git tag for building containers in CI

## [0.4.0] - 2025-02-18

### Added

- configure ruff formatting and pre-commit hook
- added RKI postal address to README files
- added reflex specific files to gitignores

### Changes

- use new --frozen-lockfile instead of deprecated --no-lock
- update project requirements, github actions and dependencies
- prevent duplicate github pipelines for test, cve and lint
- build and push containers without glueops
- loosen dependencies in pyproject.toml
- use all ruff linter rules (with some opt-outs)
- install mex-release from pypi rather than github
- constrain dev-dependencies only to major/minor versions, to limit renovate noise
- title-case readme headings for a more professional look
- use commit-signing flow from mex-release
- optimize pip and pdm environment variables
- bump year in license files to 2025
- use h3 in PR template, so we can more easily copy&paste from CHANGELOGs

### Removed

- remove black dependency and pre-commit hook
- remove wheel dependency from requirements.txt

### Fixed

- remove --no-editable flag to avoid installing local package into venv
- build correct package versions in release pipeline
- fix PIP_NO_INPUT=on in dockerfile
- fix project page URL

## [0.3.0] - 2024-06-14

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
- add release and cve pipelines to mex-template itself

### Changes

- harmonize git and docker ignore files
- update requirements, actions and sample dependencies
- set fixed versions in toml for renovatebot
- trigger documentation on release pipeline instead of pushed tag
- harmonize cron schedules

### Removed

- drop npm support from renovate pipeline
- remove non-functional branch restriction from release pipeline
- remove docker workflow and move into release pipeline
- remove stale dependabot cve-scan config

### Fixed

- fix `export-all` and `install-all` pdm scripts
- fix wording of release pipeline title
- fix tagging and pushing docker containers to ghcr.io

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
