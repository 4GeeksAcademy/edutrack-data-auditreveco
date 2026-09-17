-- Query 1: Inscripciones en 'Intro to Python'
SELECT student_name, student_email, completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

-- Query 2: Inscripciones con completion_percentage < 10 (posibles abandonos)
SELECT *
FROM enrollments
WHERE completion_percentage < 10;

-- Query 3: Inscripciones sin instructor asignado
SELECT *
FROM enrollments
WHERE instructor IS NULL;

-- Query 4: Top 5 estudiantes con mayor avance que aún no han aprobado
SELECT *
FROM enrollments
WHERE passed = false
ORDER BY completion_percentage DESC
LIMIT 5;

-- Query 5: Inscripciones del ultimo año (2025), mas recientes primero
-- Nota: se usa un rango fijo en vez de CURRENT_DATE porque los datos de prueba
-- son de 2024-2025 y la fecha del sistema es 2026 (CURRENT_DATE - INTERVAL '1 year' daba 0 filas)
SELECT *
FROM enrollments
WHERE enrollment_date >= '2025-01-01'
ORDER BY enrollment_date DESC;

