# dockerfiles

## Use

> sh -c composer

* runs the composer() function
* has been auto generated
* can be everything

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

To create a new command just make a new directory with two files

Every directory should have a
* Dockerfile
* run.sh

Make sure run.sh has execute (+x) chmod rights.
