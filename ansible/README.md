# k3s manual steps

## database
create db-user with database and privileges before installing k3s:
```
CREATE USER <USERNAME> WITH PASSWORD '<PASSWORD>';
CREATE DATABASE <DB_NAME>;
GRANT ALL PRIVILEGES ON DATABASE "<DB_NAME>" TO <USERNAME>;
-- select new database
GRANT ALL ON SCHEMA public TO <USERNAME>;
```

## vault
create path with name `k8s/` with engine `KV Version 1` 