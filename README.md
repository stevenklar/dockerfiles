# dockerfiles

## Use

> sh -c composer

* runs the composer() function
* has been auto generated
* can be everything

Every repository should have a
* Dockerfile
* run.sh

### Build docker image

Example:
> ./build.sh composer

### Build and release docker images

Example:
> ./release.sh

### Generate shell function file which you can source into your shell

Example:
> ./generate.sh

This generates a "generated_bin" file which e. g. I just source in my zsh.rc like this:
> source ~/code/dockerfiles/generated_bin

## Development

