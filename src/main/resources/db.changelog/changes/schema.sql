-- liquibase formatted sql

-- changeset marco:1
CREATE TABLE PERSON
(
    ID  UUID not null default gen_random_uuid(),
    NAME VARCHAR not null
);
