Rebar3 Erlang lib Docker template
=====

Full-featured template for develop Erlang libs with Docker

```
$ rebar3 new help docker_lib
rebar3_docker:
        custom template (/home/bottleneko/.config/rebar3/templates/rebar3_docker_template/rebar3_docker.template)
        Description: Rebar3 Erlang lib with Docker template
        Variables:
                name="new_app" (Name of the application)
                desc="new_app description" (Short description of the app)
                erlang_version="22.3" (Erlang image tag)
                uid="1000" (UID (`id -u` in common))
                gid="1000" (GID (`id -g` in common))
                date="2020-05-02"
                datetime="2020-05-02T16:31:14+00:00"
                author_name="Boris Murashov"
                author_email="bottleneko@gmail.com"
                copyright_year="2020"
                apps_dir="apps" (Directory where applications will be created if needed)
```

## Features

* Out-of-box workspace in Docker
* Elvis linting preset
* CircleCI minimal workflow
* Editorconfig integration
* Automatic sending coverage data to Coveralls

## Installation

    $ mkdir -p ~/.config/rebar3/templates
    $ git clone https://github.com/bottleneko/rebar3_docker_lib_template ~/.config/rebar3/templates/docker_lib_template

## Examples

### Generate lib

    $ rebar3 new docker_lib name=eraven desc="Sentry Erlang client" erlang_version=22.3 uid=$(id -u) gid=$(id -g)
    
### rebar3 shell

    $ make

### Container bash

    $ make workspace
    
### Container lifecycle

    $ make workspace-build
    $ make workspace-up
    $ make workspace-down
    
### Misc
   
    $ make lint
    $ make coverage

## Development

    $ git clone https://github.com/bottleneko/rebar3_docker_lib_template docker_lib_template
    $ ln -s $PWD/docker_lib_template ~/.config/rebar3/templates
    $ rebar3 new docker_lib
