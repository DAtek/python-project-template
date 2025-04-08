#!/usr/bin/env bash
set -eou pipefail

export UV_PYTHON=3.13

rm -rf .git
rm README.md
rm init.sh

uv init --no-pin-python
uv add --group dev pytest pytest-asyncio pytest-cov ruff mypy

echo "
[tool.ruff.lint]
select = [
    \"E\", # pycodestyle
    \"F\", # Pyflakes
    \"UP\", # pyupgrade
    \"I\", # isort
]

[tool.pytest.ini_options]
asyncio_mode = \"auto\"
" >> pyproject.toml


# uv already called git init
git checkout -b master
git add .
