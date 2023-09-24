# management cluster manual steps

## database
create db-user with database and priviliges:
```
CREATE USER <USERNAME> WITH PASSWORD '<PASSWORD>';
CREATE DATABASE <DB_NAME>;
GRANT ALL PRIVILEGES ON DATABASE "<DB_NAME>" TO <USERNAME>;
-- select new database
GRANT ALL ON SCHEMA public TO <USERNAME>;
```