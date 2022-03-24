-- V34 資料庫欄位更新，新增兩張table

ALTER TABLE raw_data 
ADD COLUMN leg_raw BYTEA,
ADD COLUMN leg_index INT[],
ADD COLUMN air_raw BYTEA,
ADD COLUMN air_index INT[];

CREATE TABLE leg(
   index SERIAL PRIMARY KEY,
   draw_info JSONB,
   record_id UUID NOT NULL,
   leg_metric JSONB,
   leg_result TEXT,
   doctor_id INT NOT NULL,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

CREATE TABLE air(
   index SERIAL PRIMARY KEY,
   record_id UUID NOT NULL,
   air_metric JSONB,
   doctor_id INT NOT NULL,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);