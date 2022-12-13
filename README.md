# Devcontainer WASM-Pascal
Simple devcontainer for Pascal development

# Usage

## Github Codespaces
Just click the button:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=577589267)

## Visual Studio Code
Note this assumes that you have the VS code support for remote containers and `docker` installed 
on your machine.

```sh
git clone https://github.com/dev-wasm/dev-wasm-pascal
cd dev-wasm-pascal
code ./
```

Visual studio should prompt you to see if you want to relaunch the workspace in a container, you do.

# Building and Running

## Getting Started
`main.pp` is a simple console application that prints a message, writes a file to disk and
then copies that file to a different file

```sh
fpcwasm main.pp
wasmtime main.wasm --dir .
```

## Serving web requests
Coming soon