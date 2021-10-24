# Flyway
Tool of Database version control 

## Requirements
- [docker](https://docs.docker.com/get-docker/)
- [docker-compose](https://docs.docker.com/compose/install/)


## Flyway usage
> put ./sql to ./flyway/sql 
> put ./conf to ./flyway/conf
- `migrate` Migrates the schema to the latest version. 
    ```shell
    docker-compose run flyway migrate
    ```
- `clean` Drops all objects in the configured schemas.
    ```shell
    docker-compose run flyway clean 
    ```

