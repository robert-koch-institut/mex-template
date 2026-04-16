# syntax=docker/dockerfile:1

FROM python:3.14 AS builder

WORKDIR /build

ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV PIP_NO_INPUT=on
ENV PIP_PREFER_BINARY=on
ENV PIP_PROGRESS_BAR=off

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN uv export --no-dev | uv pip install --system --no-deps -r - .

FROM python:3.14-slim

LABEL org.opencontainers.image.authors="mex@rki.de"
LABEL org.opencontainers.image.description="{{ cookiecutter.short_summary }}"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.url="https://github.com/robert-koch-institut/mex-{{ cookiecutter.project_name }}"
LABEL org.opencontainers.image.vendor="robert-koch-institut"

ENV PYTHONUNBUFFERED=1
ENV PYTHONOPTIMIZE=1

ENV MEX_{{ cookiecutter.project_name|upper }}_HOST=0.0.0.0

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.14/site-packages /usr/local/lib/python3.14/site-packages
COPY --from=builder /usr/local/bin/{{ cookiecutter.project_name }} /usr/local/bin/{{ cookiecutter.project_name }}

USER 10001

EXPOSE 8080

ENTRYPOINT [ "{{ cookiecutter.project_name }}" ]
