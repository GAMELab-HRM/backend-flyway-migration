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
    #簡單來說就是把flyway run起來，他會把postgresql volume裡面的table全部移除
    ```
- `clean` Drops all objects in the configured schemas.
> IMPORTANT!!! this will clean your database!
    ```shell
    docker-compose run flyway clean 
    ```

