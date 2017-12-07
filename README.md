# Gitbook with PlantUML

This is a sample for creating contents that includes UML diagram with [Gitbook](https://toolchain.gitbook.com/).

The source of contents is under [./src](src).

I wrote the way to publish and the way to browse on your machine local.

## Requirements

* Docker & docker-compose

## How to use

### Try to browse on your machine local.

```
$ docker-compose up viewer
```

Access to http://localhost:4000

### Publish to Amazon S3

```
$ AWS_PROFILE=xxxx docker-compose up publish
```

xxxx is profile name.

Access to http://gitbook.kinoboku.net.s3-website-ap-northeast-1.amazonaws.com/