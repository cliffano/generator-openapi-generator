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

    make generate-<component>

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

Move to the generated project directory:

    cd stage/<component>/

Initial configuration file for each OAG language:

    make init-langs-config

For the primary languages, modify the configuration file to include the following:

### Javascript

    {
      "packageName": "<project_id>",
      "packageVersion": "<version>",
      "gitUserId": "<github_id>",
      "gitRepoId": "<project_id>"
    }

### Python

    {
      "packageName": "<project_id>",
      "packageVersion": "<version>",
      "packageUrl": "https://github.com/<github_id>/<project_id>",
      "gitUserId": "<github_id>",
      "gitRepoId": "<project_id>"
    }

### Ruby

    {
      "gemName": "<project_id>",
      "moduleName": "<ProjectId>",
      "gemVersion": "<version>",
      "gemAuthor": "<author_name>",
      "gemAuthorEmail": "<author_email>",
      "gemHomepage": "https://github.com/oapicf/<project_id>",
      "gemLicense": "MIT",
      "gemRequiredRubyVersion": ">= 3.0",
      "gitUserId": "<github_id>",
      "gitRepoId": "<project_id>"
    }

Colophon
--------

Related Projects:

* [Swaggy C](https://github.com/cliffano/swaggy-c) - Builder for OpenAPIGenerator-generated API clients in multiple languages
