-- Таблица семьи
CREATE TABLE families (
    id INT PRIMARY KEY AUTO_INCREMENT,
    surname VARCHAR(50) NOT NULL,
    address VARCHAR(100),
    phone VARCHAR(20)
);

-- Таблица типов животных
CREATE TABLE animal_types (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(30) NOT NULL
);

-- Таблица животных
CREATE TABLE animals (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nickname VARCHAR(30) NOT NULL,
    age INT,
    family_id INT,
    animal_type_id INT,
    FOREIGN KEY (family_id) REFERENCES families(id),
    FOREIGN KEY (animal_type_id) REFERENCES animal_types(id)
);

-- Индексы для ускорения поиска
CREATE INDEX idx_family ON animals(family_id);
CREATE INDEX idx_animal_type ON animals(animal_type_id);