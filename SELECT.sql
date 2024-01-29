--- TABELA SPITAL ---
SELECT * FROM spital;
SELECT nume from spital;
SELECT id, nume, locatie from spital;
SELECT contact from spital;
SELECT 'Spitalul Municipal', 'Arad';
SELECT nume, capacitate > 150 from spital;
SELECT nume, contact from spital;
SELECT nume, locatie FROM public.spital WHERE locatie = 'Timisoara';
SELECT nume, locatie FROM public.spital WHERE contact = '0765149321';
SELECT * FROM spital WHERE capacitate BETWEEN 150 AND 250;

--- TABELA ECHIPAMENTE ---
SELECT * FROM echipamente;
SELECT nume_echipament, stare from echipamente;
SELECT nume_echipament from echipamente;
SELECT nume_echipament, stare FROM public.echipamente WHERE spital_id = 5;
SELECT * FROM echipamente WHERE stare = 'În mentenanță'
SELECT * FROM echipamente WHERE stare = 'Funcțional';
SELECT * FROM echipamente WHERE stare = 'Funcțional' AND spital_id = 3;
SELECT 'Incubator', 'Funcțional';
SELECT * FROM echipamente WHERE id = 25;
SELECT id > 15, nume_echipament, stare from echipamente;

--- TABELA DEPARTAMENT ---
SELECT * FROM  public.departament;
SELECT nume from departament;
SELECT spital_id from departament;
SELECT 'Traumatologie'
SELECT * FROM departament where id between 10 AND 20;
SELECT * FROM departament where spital_id = 3;
SELECT nume, spital_id from departament where nume like 'Cardiologie%';
SELECT 'Psihiatrie';
SELECT nume, spital_id from departament where id = 25;
SELECT nume, spital_id from departament where nume in ('Oncologie', 'Dermatologie');

--- TABELA ASISTENT MEDICAL ---
SELECT * FROM asistent_medical;
SELECT grad from asistent_medical;
SELECT * from asistent_medical where grad = 'Asist Med Anestezie';
SELECT id, grad from asistent_medical where id_departament = 6;
SELECT 'Asist Med Infectioase';
SELECT id_departament, grad from asistent_medical;
SELECT * from asistent_medical where grad like 'Asist Med Pediatric%';
SELECT * FROM asistent_medical where id_departament = 40 and grad like 'Asist Med%';
SELECT * FROM asistent_medical where id between 20 AND 30;
SELECT id, * from asistent_medical where grad = 'Asist Med Chirurgie Vasculară' 

--- TABELA DOCTOR ---
SELECT * FROM doctor;
SELECT nume_doctor from doctor;
SELECT specializare from doctor;
SELECT nume_doctor, specializare FROM doctor WHERE specializare = 'Cardiologie';
SELECT 'Dr. Camelia Diaconu'; 
SELECT * FROM doctor where id BETWEEN 20 AND 30;
SELECT * FROM doctor where id_departament = 16;
SELECT * FROM doctor where nume_doctor like 'Dr. Andrei%';
SELECT * FROM doctor where specializare = 'Oncologie' and id_departament = 6;
SELECT nume_doctor, id_departament from doctor where id_departament = 10;

--- TABELA PROGRAMARE ---
SELECT * FROM programare;
SELECT data_programarii from programare;
SELECT id from programare;
SELECT * FROM programare where data_programarii = '30-01-2024';
SELECT * FROM programare where id_doctor = 2;
SELECT '07-02-2024';
SELECT * FROM programare where id_pacient = 15;
SELECT * FROM programare where id BETWEEN 15 AND 30;
SELECT * FROM programare where data_programarii between '05-02-2024' and '10-02-2024';
SELECT * FROM programare where data_programarii > '10-02-2024';

--- TABELA PACIENT ---
SELECT * FROM pacient;
SELECT nume_pacient, prenume from pacient;
SELECT adresa from pacient;
SELECT data_nasterii, sex from pacient;
SELECT * FROM pacient where sex = 'F';
SELECT * FROM pacient where id_internare between 5 and 10;
SELECT * FROM pacient where sex = 'M' and adresa like '%Arad%';
SELECT * FROM pacient where id_internare = 4;
SELECT nume_pacient, data_nasterii > '20-02-1985' from pacient;
SELECT 'Tanase';

--- TABELA CAMERA ---
SELECT * FROM camera;
SELECT numarcamera, capacitate from camera;
SELECT stare from camera;
SELECT * FROM camera where capacitate = 3;
SELECT * FROM camera where stare = 'Ocupata';
SELECT * FROM camera where capacitate < 3;
SELECT * FROM camera where numarcamera between 101 and 200;
SELECT id_pacient from camera;
SELECT * FROM camera where id_pacient between 20 and 45;
SELECT '215';

--- TABELA INTERNARE ---
SELECT * FROM internare;
SELECT departament from internare;
SELECT data_internare from internare;
SELECT * FROM internare where id_pacient between 25 and 45;
SELECT 'Pediatrie';
SELECT * FROM internare where data_internare between '01-02-2024' and '10-02-2024';
SELECT * FROM internare where departament = 'Cardiologie';
SELECT * FROM internare where data_internare > '10-02-2024';
SELECT id_pacient, id_doctor from internare;
SELECT * FROM internare where id_pacient between 5 and 10;