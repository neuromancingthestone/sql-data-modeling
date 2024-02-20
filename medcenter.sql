DROP DATABASE med_center;
CREATE DATABASE med_center;
\c med_center;

CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    specialty TEXT NULL
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT,
    email TEXT,
    emerg_contact TEXT
);

CREATE TABLE patient_list(
    id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    doc_id INT NOT NULL
);

CREATE TABLE symptoms(
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients(id),
    descrip TEXT NOT NULL,
    diagnosis TEXT
);

--ALTER TABLE
--    "patients" ADD CONSTRAINT "patients_symptom_id_foreign" FOREIGN KEY("symptom_id") REFERENCES "symptoms"("id");
ALTER TABLE
    patient_list ADD CONSTRAINT patient_list_patient_id_foreign FOREIGN KEY(patient_id) REFERENCES patients(id);
ALTER TABLE
    patient_list ADD CONSTRAINT patient_list_doc_id_foreign FOREIGN KEY(doc_id) REFERENCES doctors(id);
