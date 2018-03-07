# gen_template_sweet_service

[![Stories in Ready](https://badge.waffle.io/ZURASTA/gen_template_sweet_service.png?label=ready&title=Ready)](https://waffle.io/ZURASTA/gen_template_sweet_service?utm_source=badge)

Template for creating interfaceable Elixir services.

### Available Options

* `--dialyzer` - Configures the dialyzer for the project.
* `--sibling_deps` - Adds support for sibling dependencies (e.g. the service application will depend on another application/library in the umbrella).
* `--ecto` - The service will use ecto storage. Defaults to postgres database.
* `--defecto` - Includes the [defecto](https://github.com/ScrimpyCat/defecto) library for testing.
* `--protecto` - Includes the [protecto](https://github.com/ScrimpyCat/protecto) library for changeset validations.
* `--swarm` - Indicates the service will be swarm compliant.
* `--docs` - Include doc generation.
* `--blueprint` - Include blueprints for the docs.
* `--org [name]` - Specify the organisation/user name.
* `--github` - Include the github url. Requires `--org` to be set.
* `--waffle` - Include the waffle badge. Requires `--org` to be set.
* `--ci` - Include the CircleCI config. Requires `--org` to be set.


Our typical usage will consist of these options as the base:

```bash
mix gen sweet_service --dialyzer --swarm --docs --blueprint --org ZURASTA --github --waffle --ci
```


## Installation

Clone the repo and run `mix template.install gen_template_sweet_service`.
