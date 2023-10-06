encrypt:
    sops -e ansible/inventory/hosts.ini > ansible/inventory/hosts.ini.encrypted
    sops -e ansible/inventory/group_vars/all.yml > ansible/inventory/group_vars/all.yml.encrypted

decrypt:
    sops -d ansible/inventory/hosts.ini.encrypted > ansible/inventory/hosts.ini
    sops -d ansible/inventory/group_vars/all.yml.encrypted > ansible/inventory/group_vars/all.yml