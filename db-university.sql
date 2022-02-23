-- 1 Selezionare tutti gli studenti nati nel 1990 (160)
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990
ORDER BY `date_of_birth`;

-- to make sure the counting gives the same result
SELECT COUNT(`id`)
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990
ORDER BY `date_of_birth`;



-- 2 Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT *
FROM `courses`
WHERE `cfu` > 10;

-- to make sure the counting gives the same result
SELECT COUNT(`id`)
FROM `courses`
WHERE `cfu` > 10;



-- 3 Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;



-- 4 Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses`
WHERE `year` = 1
AND `period`= 'I semestre';

-- to make sure the counting gives the same result
SELECT COUNT(`id`) 
FROM `courses`
WHERE `year` = 1
AND `period`= 'I semestre';



-- 5 Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT * 
FROM `exams`
WHERE `date` = '2020-06-20'
AND `hour` > '14:00:00';

-- to make sure the counting gives the same result
SELECT COUNT(`id`)
FROM `exams`
WHERE `date` = '2020-06-20'
AND `hour` > '14:00:00';



-- 6 Selezionare tutti i corsi di laurea magistrale (38)
SELECT * 
FROM `degrees`
WHERE `level` = 'magistrale';

-- to make sure the counting gives the same result
SELECT COUNT(`id`) 
FROM `degrees`
WHERE `level` = 'magistrale';



-- 7 Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(`id`)
FROM `departments`;



-- 8 Quanti sono gli insegnati che non hanno un numero di telefono? (50)
SELECT * 
FROM `teachers`
WHERE ISNULL(`phone`);

-- to make sure the counting gives the same result
SELECT COUNT(`id`) 
FROM `teachers`
WHERE ISNULL(`phone`);
