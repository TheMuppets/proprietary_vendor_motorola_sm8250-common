BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 40);

INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('228','01','1414','','');

COMMIT TRANSACTION;
