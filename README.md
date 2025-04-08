# Python project template

A template for modern python projects using:
- [uv](https://docs.astral.sh/uv/) as package and project manager
- [ruff](https://docs.astral.sh/ruff/) as formatter and linter
- [mypy](https://www.mypy-lang.org/) as static type checker
- [pytest](https://docs.pytest.org/en/stable/) as testing framework
- [just](https://github.com/casey/just) as command runner
- [direnv](https://direnv.net/) for loading environmental variables

## Usage
- `mkdir <your project dir>`
- `cd <your project dir> && git clone git@github.com:DAtek/python-project-template.git .`
- Set the preferred python version in `init.sh` (optional)
- Set the uv settings in `uv.toml` (optional)
- Run `init.sh`
- Have fun!
