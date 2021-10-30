-- INSERT FAKE DATA 

-- INSERT "FAKE PATIENT"
INSERT INTO patient_info(id,patient_id,sensor_num) VALUES('60988085-75f3-4e0c-ab48-a61e15eea0d1','J122971623',20);
INSERT INTO patient_info(id,patient_id,sensor_num) VALUES('7954b224-39d9-4c2e-b266-37c324f90a18','A123456789',22);
INSERT INTO patient_info(id,patient_id,sensor_num) VALUES('4da08a3f-9131-48c9-be98-4fd7a321e2cc','B234567889',20);
INSERT INTO patient_info(id,patient_id,sensor_num) VALUES('8920ea5d-4072-45f9-8e83-7ecaea982c31','K666666666',21);

-- INSERT "FAKE DOCTOR"
INSERT INTO doctor_info(doctor_id,doctor_name) VALUES(0,'Lei');
INSERT INTO doctor_info(doctor_id,doctor_name) VALUES(1,'Liang');
INSERT INTO doctor_info(doctor_id,doctor_name) VALUES(-1,'MMS');

-- INSERT "FAKE WS10"
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('60988085-75f3-4e0c-ab48-a61e15eea0d1', 0);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('60988085-75f3-4e0c-ab48-a61e15eea0d1', 1);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('60988085-75f3-4e0c-ab48-a61e15eea0d1', -1);

INSERT INTO wet_swallows_10(id, doctor_id) VALUES('7954b224-39d9-4c2e-b266-37c324f90a18', 0);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('7954b224-39d9-4c2e-b266-37c324f90a18', 1);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('7954b224-39d9-4c2e-b266-37c324f90a18', -1);

INSERT INTO wet_swallows_10(id, doctor_id) VALUES('4da08a3f-9131-48c9-be98-4fd7a321e2cc', 0);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('4da08a3f-9131-48c9-be98-4fd7a321e2cc', 1);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('4da08a3f-9131-48c9-be98-4fd7a321e2cc', -1);

INSERT INTO wet_swallows_10(id, doctor_id) VALUES('8920ea5d-4072-45f9-8e83-7ecaea982c31', 0);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('8920ea5d-4072-45f9-8e83-7ecaea982c31', 1);
INSERT INTO wet_swallows_10(id, doctor_id) VALUES('8920ea5d-4072-45f9-8e83-7ecaea982c31', -1);

-- INSERT "FAKE RAW DATA"
INSERT INTO raw_data(record_id, id) VALUES(0,'60988085-75f3-4e0c-ab48-a61e15eea0d1');
INSERT INTO raw_data(record_id, id) VALUES(1,'7954b224-39d9-4c2e-b266-37c324f90a18');
INSERT INTO raw_data(record_id, id) VALUES(2,'4da08a3f-9131-48c9-be98-4fd7a321e2cc');
INSERT INTO raw_data(record_id, id) VALUES(3,'8920ea5d-4072-45f9-8e83-7ecaea982c31');