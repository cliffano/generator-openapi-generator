<img align="right" src="https://raw.github.com/{{github_id}}/{{project_id}}/main/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/{{github_id}}/{{project_id}}/actions/workflows/ci-workflow.yaml/badge.svg)](https://github.com/{{github_id}}/{{project_id}}/actions/workflows/ci-workflow.yaml)
<br/>

{{project_name}}
{{underline "-" project_name.length}}

{{project_name}} is {{project_desc}} .

Published packages
------------------

| Language | Package | Status | Documentation |
|----------|---------|--------|---------------|
| JavaScript | [{{javascriptPkgName project_name}}]((http://www.npmjs.com/package/{{javascriptPkgName project_name}})) | [![Published Version](https://img.shields.io/npm/v/{{javascriptPkgName project_name}}.svg)](http://www.npmjs.com/package/{{javascriptPkgName project_name}}) | [README](https://github.com/{{github_id}}/{{project_id}}/blob/main/clients/javascript/generated/README.md) |
| Python | [{{project_id}}]((https://pypi.python.org/pypi/{{project_id}})) | [![Published Version](https://img.shields.io/pypi/v/{{project_id}}.svg)](https://pypi.python.org/pypi/{{project_id}}) | [README](https://github.com/{{github_id}}/{{project_id}}/blob/main/clients/python/generated/README.md) |
| Ruby | [{{rubyPkgName project_name}}]((https://rubygems.org/gems/{{rubyPkgName project_name}})) | [![Published Version](https://img.shields.io/gem/v/{{rubyPkgName project_name}}.svg)](https://rubygems.org/gems/{{rubyPkgName project_name}}) | [README](https://github.com/{{github_id}}/{{project_id}}/blob/main/clients/ruby/generated/README.md) |

Version matrix
--------------

| {{project_name}} Version | OpenAPI Version | OpenAPI Generator Version |
|-{{underline "-" project_name.length}}---------|-----------------|---------------------------|
| ... | ... | ... |

Installation
------------

You can either use the generated clients from `clients/<lang>/generated/` directory.

Or you can use the published packages like below:

Install JavaScript client:

    npm install {{javascriptPkgName project_name}}

Install Python client:

    pip install {{pythonPkgName project_name}}

Install Ruby client:

    gem install {{rubyPkgName project_name}}

Colophon
--------

* [API Documentation](https://{{github_id}}.github.io/{{project_id}}/api/latest/)
