# syntax=docker/dockerfile:1@sha256:ecfaec9ed6d810b56388c508f4121597bfbba70d41a6dfeee4d8cad5f295fc32

FROM python:{{ cookiecutter.python_version_max }} AS builder

WORKDIR /build

ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV PIP_NO_INPUT=on
ENV PIP_PREFER_BINARY=on
ENV PIP_PROGRESS_BAR=off

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN uv export --no-dev --no-editable | uv pip install --system --no-deps -r -

FROM python:{{ cookiecutter.python_version_max }}-slim

LABEL org.opencontainers.image.authors="mex@rki.de"
LABEL org.opencontainers.image.description="{{ cookiecutter.short_summary }}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.url="https://github.com/robert-koch-institut/mex-{{ cookiecutter.project_name }}"
LABEL org.opencontainers.image.vendor="robert-koch-institut"

ENV PYTHONUNBUFFERED=1
ENV PYTHONOPTIMIZE=1

WORKDIR /app

COPY --from=builder /usr/local/lib/python{{ cookiecutter.python_version_max }}/site-packages /usr/local/lib/python{{ cookiecutter.python_version_max }}/site-packages
COPY --from=builder /usr/local/bin/{{ cookiecutter.project_name }} /usr/local/bin/{{ cookiecutter.project_name }}

USER 10001

EXPOSE 8080

ENTRYPOINT [ "{{ cookiecutter.project_name }}" ]
