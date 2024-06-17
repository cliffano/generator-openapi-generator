<img align="right" src="https://raw.github.com/cliffano/generator-openapi-generator/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/generator-openapi-generator/workflows/CI/badge.svg)](https://github.com/cliffano/generator-openapi-generator/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/generator-openapi-generator/badge.svg)](https://snyk.io/test/github/cliffano/generator-openapi-generator)

Generator-OpenAPI-Generator
---------------------------

Generator-OpenAPI-Generator is an OpenAPI Generator projects generator using [Plop](https://plopjs.com/).

It provides the following components:

| Component | Description |
|-----------|-------------|
| oag-file-spec | Generate a project to generate OpenAPI Generator using a file specification. |
| oag-url-spec | Generate a project to generate OpenAPI Generator using a URL specification. |

All components are built using [Swaggy C](https://github.com/cliffano/swaggy-c).

Usage
-----

Generate OAG project:

    make generate-oag

Both components will prompt you the following inputs:

| Prompt | Description |
|--------|-------------|
| Project ID | Used for Python package name and CLI command. |
| Project Name | Used in documentation or comments. |
| Project Description | Used in documentation or comments. |
| Author Name | The name of the project author. |
| Author Email | The email of the project author. |
| Author URL | The author's website URL. |
| GitHub ID | The GitHub ID of the project repo. |


Colophon
--------

Related Projects:

* [Swaggy C](https://github.com/cliffano/swaggy-c) - Builder for OpenAPIGenerator-generated API clients in multiple languages
