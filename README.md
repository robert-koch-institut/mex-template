# MEx template

Cookiecutter template for MEx python projects.

[![cookiecutter](https://github.com/robert-koch-institut/mex-template/actions/workflows/cookiecutter.yml/badge.svg)](https://github.com/robert-koch-institut/mex-template)
[![cve-scan](https://github.com/robert-koch-institut/mex-template/actions/workflows/cve-scan.yml/badge.svg)](https://github.com/robert-koch-institut/mex-template/actions/workflows/cve-scan.yml)
[![linting](https://github.com/robert-koch-institut/mex-template/actions/workflows/linting.yml/badge.svg)](https://github.com/robert-koch-institut/mex-template/actions/workflows/linting.yml)
[![open-code](https://github.com/robert-koch-institut/mex-template/actions/workflows/open-code.yml/badge.svg)](https://gitlab.opencode.de/robert-koch-institut/mex/mex-template)

## Project

The Metadata Exchange (MEx) project is committed to improve the retrieval of RKI
research data and projects. How? By focusing on metadata: instead of providing the
actual research data directly, the MEx metadata catalog captures descriptive information
about research data and activities. On this basis, we want to make the data FAIR[^1] so
that it can be shared with others.

Via MEx, metadata will be made findable, accessible and shareable, as well as available
for further research. The goal is to get an overview of what research data is available,
understand its context, and know what needs to be considered for subsequent use.

RKI cooperated with D4L data4life gGmbH for a pilot phase where the vision of a
FAIR metadata catalog was explored and concepts and prototypes were developed.
The partnership has ended with the successful conclusion of the pilot phase.

After an internal launch, the metadata will also be made publicly available and thus be
available to external researchers as well as the interested (professional) public to
find research data from the RKI.

For further details, please consult our
[project page](https://www.rki.de/DE/Aktuelles/Publikationen/Forschungsdaten/MEx/metadata-exchange-plattform-mex-node.html).

[^1]: FAIR is referencing the so-called
[FAIR data principles](https://www.go-fair.org/fair-principles/) – guidelines to make
data Findable, Accessible, Interoperable and Reusable.

**Contact** \
For more information, please feel free to email us at [mex@rki.de](mailto:mex@rki.de).

### Publisher

**Robert Koch-Institut** \
Nordufer 20 \
13353 Berlin \
Germany

## Package

The `mex-template` is a [cookiecutter](https://www.cookiecutter.io/) template to make
starting a new python project easier and to keep boilerplate files harmonized using
[cruft](https://cruft.github.io/cruft/).

## License

This package is licensed under the [MIT license](/LICENSE). All other software
components of the MEx project are open-sourced under the same license as well.

## Usage

### Installation

- on unix, consider using pyenv https://github.com/pyenv/pyenv
  - get pyenv `curl https://pyenv.run | bash`
  - install 3.11 `pyenv install 3.11`
  - switch version `pyenv global 3.11`
  - run `pip install cruft`
- on windows, consider using pyenv-win https://pyenv-win.github.io/pyenv-win/
  - follow https://pyenv-win.github.io/pyenv-win/#quick-start
  - install 3.11 `pyenv install 3.11`
  - switch version `pyenv global 3.11`
  - run `pip install cruft`

### Create new

- starting a new project using this template is easy
- go to your home / code folder
- run `cruft create https://github.com/robert-koch-institut/mex-template`
- fill in the prompted values

### Update existing

- there are two tools to help you update the boilerplate of existing projects
- go to your local checkout of a project using this template
- `cruft diff` shows you the difference between the template an your local files
- `cruft update` will attempt to update the boilerplate files and content automatically
