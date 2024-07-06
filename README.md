# JavaScript Linting for Rails

This gem provides a basic eslint and prettier setup for Rails apps setup with [jsbundling-rails](https://github.com/rails/jsbundling-rails).

## Installation

Ensure [jsbundling-rails](https://github.com/rails/jsbundling-rails) is installed in your application, as
`jslinting-rails` relies on it.

If you are using node, ensure npx >7.1 is installed.

If you are using bun, then you must have the bun runtime installed.

To get started run:

```bash
./bin/bundle add jslinting-rails --group development
```

```bash
./bin/rails jslinting:install
```

## Usage

This gem adds two scripts to your `package.json`, `lint` and `format`.

They can be run directly through your package manager with

```bash
yarn run lint
yarn run format
```

or as a task via

```bash
rails javascript:lint
rails javascript:format
```

## License

`jslinting-rails` is released under the [MIT License](https://opensource.org/licenses/MIT).
