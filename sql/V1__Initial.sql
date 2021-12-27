-- JUST TEST
CREATE TABLE patient_info(
   record_id UUID PRIMARY KEY NOT NULL UNIQUE,
   patient_id TEXT NOT NULL UNIQUE,
   sensor_num INT NOT NULL
);

CREATE TABLE doctor_info(
   doctor_id INT PRIMARY KEY NOT NULL UNIQUE,
   doctor_name TEXT NOT NULL 
);

CREATE TABLE wet_swallows_10(
   index SERIAL PRIMARY KEY,
   record_id UUID NOT NULL,
   vigors TEXT[],
   patterns TEXT[],
   dcis TEXT[],
   swallow_types TEXT[],
   ws_result TEXT,
   irp4s TEXT[],
   dls TEXT[],
   doctor_id INT NOT NULL,
   pressure_max INT,
   pressure_min INT ,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE mrs(
   index SERIAL PRIMARY KEY,
   record_id UUID NOT NULL,
   draw_info JSONB,
   mrs_metric JSONB,
   doctor_id INT NOT NULL,
   mrs_result TEXT,
   pressure_max INT,
   pressure_min INT,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE hiatal_hernia(
   index SERIAL PRIMARY KEY,
   draw_info JSONB,
   record_id UUID NOT NULL,
   hh_metric JSONB,
   hiatal_hernia_result TEXT,
   rip_result TEXT,
   doctor_id INT NOT NULL,
   pressure_max INT,
   pressure_min INT,
   black_line INT,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE raw_data(
   index SERIAL PRIMARY KEY,
   filename TEXT NOT NULL,
   record_id UUID NOT NULL,
   ws_10_raw BYTEA,
   mrs_raw BYTEA,
   rdc_raw BYTEA,
   hh_raw BYTEA,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE
);

CREATE TABLE time_record(
   index SERIAL PRIMARY KEY,
   record_id UUID NOT NULL,
   doctor_id INT NOT NULL,
   last_update timestamptz,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE testing(
   index SERIAL PRIMARY KEY,
   draw_info JSONB
);