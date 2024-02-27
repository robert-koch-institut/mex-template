# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- create CHANGELOG.md
- configure dependabot updates for github-actions
- add EOF, WS and BOM githooks
- add A, B, PERF and UP ruff linter rule sets
- add pytest-random as dev dependency
- activate random pytest order by default
- add bot user as assignee to dependabot prs

### Changes

- update workflow triggers and schedules
- rename cookiecutter workflow main job to `cruft`
- update poetry and pre-commit dependencies
- always tag dependabot prs as `dependabot`
- narrow pull-request workflow trigger to reduce duplicate runs
- update github actions dependencies
- let cookiecutter workflow create PRs to run cruft update

### Deprecated

### Removed

### Fixed

- do not run cve on Dependabot push events

### Security
