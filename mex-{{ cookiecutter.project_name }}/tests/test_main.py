from mex.{{ cookiecutter.project_name }}.main import main


def test_main() -> None:
    assert main() is None
