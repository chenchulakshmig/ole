--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: bootstrap_others.xml
--  *********************************************************************

--  Lock Database
--  Changeset bootstrap_others.xml::KRIM_MYSQL_TRIGGERS_DROP::ole
DROP TRIGGER IF EXISTS KRIM_ENTITY_TR
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_ENT_TYP_TR
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_NM_TR
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_EMAIL_TR
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_PHONE_T
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_ADDR_T
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_AFLTN_T
/

DROP TRIGGER IF EXISTS KRIM_ENTITY_EMP_INFO_T
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('KRIM_MYSQL_TRIGGERS_DROP', 'ole', 'bootstrap_others.xml', NOW(), 1, '7:0c754900aed45bb0dd6a5515c559148a', 'sql (x8)', '', 'EXECUTED', '3.2.0')
/

--  Changeset bootstrap_others.xml::KRIM_MYSQL_TRIGGERS::ole
CREATE TRIGGER KRIM_ENTITY_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_ENT_TYP_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_ENT_TYP_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_NM_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_NM_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_EMAIL_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_EMAIL_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_PHONE_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_PHONE_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_ADDR_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_ADDR_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_AFLTN_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_AFLTN_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

CREATE TRIGGER KRIM_ENTITY_EMP_INFO_TR BEFORE INSERT OR UPDATE ON KRIM_ENTITY_EMP_INFO_T FOR EACH ROW SET NEW.LAST_UPDT_DT = CURRENT_TIMESTAMP
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('KRIM_MYSQL_TRIGGERS', 'ole', 'bootstrap_others.xml', NOW(), 2, '7:eb689b3e3ea6e16d61718d069d03d4f5', 'sql (x8)', '', 'EXECUTED', '3.2.0')
/

--  Release Database Lock
--  Release Database Lock
