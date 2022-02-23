-- 1 Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `students`.`id`, 
        `degrees`.`name` 
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
SELECT `courses`.`id`, `courses`.`name`, `course_teacher`.`teacher_id`, 
        `teachers`.`name`, `teachers`.`surname`, `teachers`.`email`
FROM `courses`
JOIN `course_teacher`
	ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `course_teacher`.`teacher_id` = 44;


-- 4 Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui 
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`id`, `students`.`name`, `students`.`surname`, 
        `degrees`.`name`, `degrees`.`level`,
        `departments`.`name` 
FROM `students`
JOIN `degrees`
	ON `students`.`degree_id` = `degrees`.`id`
JOIN `departments`
	ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname`, `students`.`name`


-- 5 Selezionare tutti i corsi di laurea con i relativi corsi e insegnati
SELECT `degrees`.`id`, `degrees`.`name`, `degrees`.`level`,
		`courses`.`id`, `courses`.`name`, `courses`.`year`, `courses`.`period`,
        `teachers`.`id`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees`
JOIN `courses`
	ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
	ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers` 
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
ORDER BY `degrees`.`id`;


-- 6 Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `departments`.`name` ,`teachers`.`id` ,`teachers`.`name`, `teachers`.`surname` ,COUNT(*) AS 'courses'
FROM `departments`
JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
JOIN `courses`
	ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
	ON `course_teacher`.`course_id` = `courses`.`id`
JOIN `teachers`
	ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica'
GROUP BY `teachers`.`id`;


-- 7 BONUS: Selezionare per ogni studente quanti tentativi d'esame ha sostenuto per 
-- superare ciascuno dei suoi esami