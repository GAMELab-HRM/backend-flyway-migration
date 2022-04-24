ALTER TABLE raw_data 
ADD COLUMN resting_raw BYTEA,
ADD COLUMN resting_index INT[];

CREATE TABLE resting(
   index SERIAL PRIMARY KEY,
   draw_info JSONB,
   record_id UUID NOT NULL,
   resting_metric JSONB,
   resting_result TEXT[],
   rip_result TEXT[],
   doctor_id INT NOT NULL,
   pressure_max INT,
   pressure_min INT,
   black_line INT,
   FOREIGN KEY(record_id) REFERENCES patient_info(record_id) ON DELETE CASCADE,
   FOREIGN KEY(doctor_id) REFERENCES doctor_info(doctor_id)
);

