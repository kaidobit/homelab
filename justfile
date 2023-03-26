# sops encrypts all screts in this repo
encrypt:
    just --justfile ./infra-base/justfile encrypt
    just --justfile ./network/justfile encrypt

# sops decrypts all screts in this repo
decrypt:
    just --justfile ./infra-base/justfile decrypt
    just --justfile ./network/justfile decrypt