FROM flyway/flyway:latest-alpine 

COPY ./sql /flyway/sql 
COPY ./conf/flyway.test.conf /flyway/conf/flyway.conf