let
    nixgl = import (fetchTarball "https://github.com/guibou/nixGL/archive/master.tar.gz") {
      inherit pkgs;
    };
    pkgs = import (fetchTarball "https://github.com/nixos/nixpkgs/archive/6adf48f53d819a7b6e15672817fa1e78e5f4e84f.tar.gz") {};
in
    pkgs.mkShell.override { stdenv = pkgs.clangStdenv; } {
        buildInputs = [
            # Tooling
            pkgs.just
            pkgs.ansible
            pkgs.vault
            pkgs.terraform
            pkgs.minio-client
            pkgs.sops
            pkgs.age
        ];

        shellHook =
          ''
            #bug with ansible build https://github.com/NixOS/nixpkgs/issues/223151
            export LC_ALL=C.UTF-8
          '';
    }