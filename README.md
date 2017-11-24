antlr.docker
============

[![Build](https://img.shields.io/travis/leodido/antlr.docker/master.svg?style=for-the-badge)](https://travis-ci.org/leodido/antlr.docker) [![Docker](https://img.shields.io/badge/docker-ready-blue.svg?style=for-the-badge)](https://registry.hub.docker.com/u/leodido/antlr)


This repository contains the source to build and ship ready to use docker image providing [ANTLR](http://www.antlr.org).

What it is
----------

> A powerful parser generator for reading, processing, executing, or translating structured text or binary files. It's widely used to build languages, tools, and frameworks. From a grammar, ANTLR generates a parser that can build and walk parse trees.

_[antlr.org](http://www.antlr.org)_

Installation
------------

Directly pull this image from the docker index.

```bash
docker pull leodido/antlr
```

Usage
-----

The entrypoint of this container is the antlr executable.

You have to instantiate a container from this image bind-mounting volumes (for input and output files) and the passing the typical command line options as well as if you are calling antlr directly.

Something like the following line.

```
docker run --rm -v ... --user $(id -u):$(id -g) leodido/antlr <antlr_command_line_args>
```

I suggest to create an alias to this invocation.

Or you can use the **wrapper script** [antlr](/antlr).

It accepts the same options as antlr itself. It bind-mounts all the necessary directories and calls the antlr executable within the container.

```
docker create --name antlr leodido/antlr
sudo docker cp antlr:antlr .
docker rm antlr
```

---

[![Analytics](https://ga-beacon.appspot.com/UA-49657176-1/antlr.docker?flat)](https://github.com/igrigorik/ga-beacon)