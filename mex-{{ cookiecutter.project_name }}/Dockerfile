# syntax=docker/dockerfile:1

FROM python:3.11 as base

LABEL org.opencontainers.image.authors="RKI MEx Team <mex@rki.de>"
LABEL org.opencontainers.image.description="{{ cookiecutter.short_summary }}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source = "https://github.com/robert-koch-institut/mex-{{ cookiecutter.project_name }}"

ENV PYTHONUNBUFFERED=1
ENV PYTHONOPTIMIZE=1

ENV PIP_PROGRESS_BAR=off
ENV PIP_PREFER_BINARY=on
ENV PIP_DISABLE_PIP_VERSION_CHECK=on

ENV MEX_{{ cookiecutter.project_name|upper }}_HOST=0.0.0.0

WORKDIR /app

RUN adduser \
    --disabled-password \
    --gecos "" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "10001" \
    mex

COPY . .

RUN --mount=type=cache,target=/root/.cache/pip pip install .

USER mex

EXPOSE 8080

ENTRYPOINT [ "{{ cookiecutter.project_name }}" ]
