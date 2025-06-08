-- 1. Получить количество животных в каждой семье
SELECT f.surname, COUNT(a.id) AS animal_count
FROM families f
LEFT JOIN animals a ON f.id = a.family_id
GROUP BY f.surname;

-- 2. Получить все семьи, у которых есть собаки
SELECT DISTINCT f.surname
FROM families f
JOIN animals a ON f.id = a.family_id
JOIN animal_types at ON a.animal_type_id = at.id
WHERE at.type_name = 'Собака';

-- 3. Получить имена животных, возраст которых больше 2-х лет
SELECT nickname, age
FROM animals
WHERE age > 2;