-- Вставка данных в таблицу families
INSERT INTO families (surname, address, phone) VALUES
('Ивановы', 'ул. Ленина, д.10', '+79161234567'),
('Петровы', 'ул. Гагарина, д.15', '+79261234568'),
('Сидоровы', 'пр-т Мира, д.20', '+79361234569');

-- Вставка данных в таблицу animal_types
INSERT INTO animal_types (type_name) VALUES
('Собака'),
('Кошка'),
('Попугай');

-- Вставка данных в таблицу animals
INSERT INTO animals (nickname, age, family_id, animal_type_id) VALUES
('Барсик', 3, 1, 2),
('Шарик', 5, 1, 1),
('Кеша', 1, 2, 3),
('Мурка', 2, 3, 2);