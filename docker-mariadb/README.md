# docker mariadb

#### To use this service add below line in `.gitlab-ci.yml`
---
```
variables:
  MYSQL_ROOT_PASSWORD: "MYSQL ROOT PASSWORD"
  MYSQL_DATABASE: "MYSQL DATABASE NAME"

services:
- name: mariadb:latest
  alias: mariadb ## this will your hostname for mariadb
```
---