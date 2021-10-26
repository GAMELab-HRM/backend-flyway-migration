-- JUST TEST
CREATE TABLE patient_info(
   id UUID PRIMARY KEY NOT NULL UNIQUE,
   patient_id CHAR(10) NOT NULL,
   sensor_num INT NOT NULL
);

CREATE TABLE doctor_info(
   doctor_id INT PRIMARY KEY NOT NULL UNIQUE,
   doctor_name TEXT NOT NULL 
);

CREATE TABLE wet_swallows_10(
   -- record_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
   id UUID NOT NULL,
   vigors BYTEA,
   patterns BYTEA,
   dcis BYTEA,
   swallow_types BYTEA,
   irp4s BYTEA,
   dls BYTEA,
   doctor_id INT NOT NULL,
   pressure_max INT,
   pressure_min INT ,
   PRIMARY KEY(id, doctor_id),
   FOREIGN KEY(id) REFERENCES patient_info(id),
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE mrs(
   -- record_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
   id UUID NOT NULL,
   mrs_dci_position BYTEA,
   mrs_dci BYTEA,
   dci_after_mrs_position BYTEA,
   dci_after_mrs FLOAT(24),
   irp1_position BYTEA,
   irp1 FLOAT(24),
   doctor_id INT NOT NULL,
   mrs_result TEXT,
   pressure_max INT,
   pressure_min INT,
   PRIMARY KEY(id, doctor_id),
   FOREIGN KEY(id) REFERENCES patient_info(id),
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE hiatal_hernia(
   -- record_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
   id UUID NOT NULL,
   les_position FLOAT(24),
   cd_position FLOAT(24),
   rip_position FLOAT(24),
   seperate BOOLEAN,
   hiatal_hernia_result TEXT,
   rip_result TEXT,
   doctor_id INT NOT NULL,
   pressure_max INT,
   pressure_min INT,
   black_line INT,
   PRIMARY KEY(id, doctor_id),
   FOREIGN KEY(id) REFERENCES patient_info(id),
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE raw_data(
   record_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
   id UUID NOT NULL,
   ws_10_raw BYTEA,
   mrs_raw BYTEA,
   rdc_raw BYTEA,
   hh_raw BYTEA
);

CREATE TABLE time_record(
   -- record_id SERIAL PRIMARY KEY NOT NULL UNIQUE,
   id UUID NOT NULL,
   doctor_id INT NOT NULL,
   last_update timestamptz,
   PRIMARY KEY(id, doctor_id),
   FOREIGN KEY(id) REFERENCES patient_info(id),
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);