# Minimalist AWS-Cli Docker Image
This docker image contains minimalist hugo build based on the alpine docker image.

* [GitHub](https://github.com/aohorodnyk/docker-hugo)
* [DockerHub](https://hub.docker.com/r/aohorodnyk/hugo/)

## Tags
This repository builds every week with saving a version of the tag. Tags are following [semantic version rules](https://semver.org/). So you can depend on a major, a minor or a patch version and can be sure you'll have the latest release of the requested version.

## Usage
You can simply [run](https://docs.docker.com/engine/reference/run/) hugo command from the image and do everything follows [hugo documentation](https://gohugo.io/documentation/).

Example:
```bash
$ docker run --rm \
    -v /path:/opt aohorodnyk/hugo \
    hugo new site test
```
