-- 1 Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `students`.`id`, `degrees`.`name` 
FROM `students`
JOIN `degrees`
	ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` LIKE 'Corso di Laurea in Economia'
ORDER BY `students`.`surname`, `students`.`name`;


-- 2 Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT * 
FROM `departments`
JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` LIKE 'Dipartimento di Neuroscienze';


-- 3 Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`id`, `courses`.`name`, `course_teacher`.`teacher_id`, `teachers`.`name`, `teachers`.`surname`, `teachers`.`email`
FROM `courses`
JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `course_teacher`.`teacher_id` = 44;


-- 4 Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui 
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome



-- 5 Selezionare tutti i corsi di laurea con i relativi corsi e insegnati



-- 6 Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)



-- 7 BONUS: Selezionare per ogni studente quanti tentativi d'esame ha sostenuto per 
-- superare ciascuno dei suoi esami