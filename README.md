# Homelab

This repository represents the basis of my homelab relating infrastructure and networking. It is meant to be shared and can be replicated.
Due to the security aspects I had to encrypt some files in this repo, this will be documented in the different READMEs.

I've tried to set up as much as possible automatically using a selection of different tools. That being said, you can only do so much automation due to the chicken/egg-problem at the stage of this project. Also, Synology does not provide any automation, so I had to stick to `docker-compose` files when it comes to a few services. Therefore, some manual steps are to be expected when replicating.

Configuration happens in the `.env` accordingly to the `.env.dist`. Each section is annotated with the package it needs to be configured for. Keep in mind that some values are unknown at the beginning.

## Requirements

* [Docker](https://docs.docker.com/get-started/overview/) (for development/testing)
  * used for development
  * hosting on Synology
* [direnv](https://direnv.net/)
    * uses [nix-direnv](https://github.com/nix-community/nix-direnv) for caching and invoking `nix-shell`
    * export environment variables of `.env` in projectroot
* [Nix Package Manager](https://nixos.org/download.html#nix-install-linux)
  * setup of tooling for this repository


## Getting Started

1. configure and deploy [minio](./minio/README.md)
2. configure and deploy [infra-base](./infra-base/README.md)
3. configure and deploy [network](./network/README.md)

## Tooling

Apart from the requirements above, these tools are being installed automatically:
* [just](https://github.com/casey/just) - a simple `make`-like command line runner
* [terraform](https://developer.hashicorp.com/terraform/intro) - infrastructure provisioning tool
* [sops](https://github.com/mozilla/sops) + [age](https://github.com/FiloSottile/age)
  * encrypt secrets inside a repository
* [minio-client](https://min.io/docs/minio/linux/reference/minio-mc.html) - for interaction with minio; you can also use the `minio-console`