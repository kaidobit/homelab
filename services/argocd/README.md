# argocd

- argocd helmchart
- [argocd-vault-plugin with sops-backend](https://argocd-vault-plugin.readthedocs.io/en/stable/backends/#sops)
  - secret for VAULT_TOKEN and VAULT_ADDR
- change admin password:
  1. `docker run --rm -ti xmartlabs/htpasswd --platform=linux/amd64 "" <PASSWORD>  | sed 's/$2y/$2a/'`
  2. `echo <OUTPUT_LAST_COMMAND_WITHOUT > | base64`
  3. `kubectl -n argocd patch secret argocd-secret -p '{"stringData": {"admin.password": "<OUTPUT_LAST_COMMAND>",\n    "admin.passwordMtime": "'$(date +%FT%T%Z)'"\n  }}'`