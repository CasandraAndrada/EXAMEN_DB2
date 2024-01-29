--- TABELA SPITAL ---
UPDATE spital set capacitate = 250 where id = 1;
UPDATE spital set nume = 'Spitalul de Boli Infectioase' where id = 3;
UPDATE spital set contact = '0753111222' where id = 5;
UPDATE spital set capacitate = 150 where id = 7;
UPDATE spital set contact = '0749123456' where id = 8;
UPDATE spital set capacitate = 130 where id = 11;
UPDATE spital set contact = '0761000111' where id = 13;
UPDATE spital set capacitate = 220 where id = 15;
UPDATE spital set contact = '0756333222' where id = 18;

--- TABELA ECHIPAMENTE ---
UPDATE echipamente set stare = 'În mentenanță' where id = 9;
UPDATE echipamente set stare = 'Funcțional' where id = 6;
UPDATE echipamente set stare = 'În mentenanță' where id = 9;
UPDATE echipamente set stare = 'În mentenanță' where id = 45;
UPDATE echipamente set stare = 'Funcțional' where id = 42;
UPDATE echipamente set stare = 'În mentenanță' where id = 30;
UPDATE echipamente set stare = 'Funcțional' WHERE id = 29;
UPDATE echipamente set stare = 'În mentenanță' WHERE id = 21;
UPDATE echipamente set stare = 'În mentenanță' WHERE id = 19;
UPDATE echipamente set stare = 'În mentenanță' WHERE id = 35;

--- TABLE DEPARTAMENT ---
UPDATE departament set nume = 'Imagistică Medicală' where id = 2;
UPDATE departament set nume = 'Oncologie Terapeutică' where id = 6;
UPDATE departament set nume = 'Ortopedie Pediatrică Avansată' where id = 40;
UPDATE departament set nume = 'Reumatologie Clinica' where id = 12;
UPDATE departament set nume = 'Infecțioase Clinice' where id = 14;
UPDATE departament set nume = 'Oftalmologie Avansată' where id = 8;
UPDATE departament set nume = 'Oncologie Terapeutică' where id = 6;
UPDATE departament set nume = 'Chirurgie Vasculară Avansată' where id = 5;
UPDATE departament set nume = 'Pediatrie Generală' where id = 4;
UPDATE departament set nume = 'Pneumologie Terapeutică' where id = 15;
UPDATE departament set nume = 'Reumatologie Clinica' where id = 12;

--- TABELA ASISTENT MEDICAL ---
UPDATE asistent_medical set grad = 'Asist Med Cardiologie' where id = 1;
UPDATE asistent_medical set grad = 'Asist Med Imagistică Medicală' where id = 2;
UPDATE asistent_medical set grad = 'Asist Med Pediatrie' where id = 3;
UPDATE asistent_medical set grad = 'Asist Med Ginecologie' where id = 5;
UPDATE asistent_medical set grad = 'Asist Med Pediatrie' where id = 4;
UPDATE asistent_medical set grad = 'Asist Med Ortopedie' where id = 6;
UPDATE asistent_medical set grad = 'Asist Med Anestezie' where id = 8;
UPDATE asistent_medical set grad = 'Asist Med Hematologie' where id = 14;
UPDATE asistent_medical set grad = 'Asist Med Gastroenterologie' where id = 15;
UPDATE asistent_medical set grad = 'Asist Med Radiologie' where id = 10;

--- TABELA DOCTOR ---
UPDATE doctor set nume_doctor = 'Dr. Ionescu' where id = 2;
UPDATE doctor set nume_doctor = 'Dr. Vasilescu' where id = 3;
UPDATE doctor set nume_doctor = 'Dr. Andreea Popa' where id = 6;
UPDATE doctor set nume_doctor = 'Dr. Elena Stoica' where id = 8;
UPDATE doctor set nume_doctor = 'Dr. Adrian Munteanu' where id = 10;
UPDATE doctor set nume_doctor = 'Dr. Bianca Popovici' where id = 11;
UPDATE doctor set nume_doctor = 'Dr. Alexandru Georgescu' where id = 12;
UPDATE doctor set nume_doctor = 'Dr. Maria Tanase' where id = 9;
UPDATE doctor set nume_doctor = 'Dr. Ionut Marinescu' where id = 14;

--- TABELA PROGRAMARE ---
UPDATE programare set data_programarii = '30-01-2024' where id = 1;
UPDATE programare set data_programarii = '05-02-2024' where id = 7; 
UPDATE programare set data_programarii = '08-02-2024' where id = 10;
UPDATE programare set data_programarii = '09-02-2024' where id = 11;
UPDATE programare set data_programarii = '02-02-2024' where id = 4;
UPDATE programare set data_programarii = '07-02-2024' where id = 9;
UPDATE programare set data_programarii = '10-02-2024' where id = 12;
UPDATE programare set data_programarii = '12-02-2024' where id = 14;
UPDATE programare set data_programarii = '04-02-2024' where id = 6;
UPDATE programare set data_programarii = '06-02-2024' where id = 8;

--- TABELA PACIENT ---
UPDATE pacient set data_nasterii = '20-02-1985', sex = 'M', adresa = 'Bulevardul Libertății nr. 25, Arad', id_internare = 2 where id = 2;
UPDATE pacient set data_nasterii = '03-07-2000', sex = 'F', adresa = 'Bulevardul Revoluției nr. 40, Curtici', id_internare = 5 where id = 5;
UPDATE pacient set data_nasterii = '17-08-1982', sex = 'M', adresa = 'Str. Spitalului nr. 5, Lipova', id_internare = 6 where id = 6;
UPDATE pacient set data_nasterii = '01-09-1989', sex = 'M', adresa = 'Str. Dorobanti, nr. 45, Timisoara', id_internare = 8 where id = 8;
UPDATE pacient set data_nasterii = '12-05-2000', sex = 'F', adresa = 'Str. Nouă nr. 30, Aradul Nou', id_internare = 9 where id = 9;

--- TABELA CAMERA ---
UPDATE camera set numarcamera = 117, capacitate = 2, stare = 'Ocupata', id_pacient = 26 where id = 17;
UPDATE camera set numarcamera = 115, capacitate = 3, stare = 'Ocupata', id_pacient = 36 where id = 15;
UPDATE camera set numarcamera = 112, capacitate = 4, stare = 'Ocupata', id_pacient = 5 where id = 12;

--- TABELA INTERNARE ---
UPDATE internare set id_pacient = 1, id_doctor = 1, data_internare = '30-01-2024', departament = 'Cardiologie', id_camera = 1 where id = 1;
UPDATE internare set id_pacient = 3, id_doctor = 3, data_internare = '01-02-2024', departament = 'Urgente', id_camera = 3 where id = 3;
UPDATE internare set id_pacient = 5, id_doctor = 5, data_internare = '03-02-2024', departament = 'Chirurgie Vasculara', id_camera = 5 where id = 5;


