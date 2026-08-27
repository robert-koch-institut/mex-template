{% if not cookiecutter.containerize %}
import os

# this project is not published as a container image
os.remove("Dockerfile")
os.remove(".dockerignore")
{% endif %}
