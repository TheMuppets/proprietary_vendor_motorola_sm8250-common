BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 42);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '450';
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_table" VALUES('450','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_table" VALUES('450','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','111','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','113','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','117','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','118','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','119','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','122','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('450','125','','full');

COMMIT TRANSACTION;
