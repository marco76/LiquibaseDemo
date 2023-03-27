--liquibase formatted sql

--changeset marco:1
drop ALIAS if exists gen_random_uuid;
CREATE ALIAS gen_random_uuid as '
    import java.util.UUID;
    @CODE
    java.util.UUID genRandomUuid() throws Exception {
    return UUID.randomUUID();
    }'
    ;
