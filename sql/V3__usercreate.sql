CREATE TABLE user_record(
   username TEXT PRIMARY KEY,
   password TEXT NOT NULL
);

INSERT INTO user_record(username,password) VALUES('doctor','doctorpassword');
