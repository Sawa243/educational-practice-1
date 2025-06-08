// Вводим данные (для демонстрации захардкожено)
let A = [3, -5, 7, 0, 9, -1, 4];
let B = 4;

// Инициализация переменных
let sumPositive = 0, countPositive = 0, productGreaterB = 1, countGreaterB = 0;

// Обрабатываем массив
A.forEach(num => {
    if (num > 0) {
        sumPositive += num;
        countPositive++;
    }
    if (num > B) {
        productGreaterB *= num;
        countGreaterB++;
    }
});

// Результаты
console.log("Сумма положительных элементов:", sumPositive);
console.log("Количество положительных элементов:", countPositive);
if (countGreaterB > 0) {
    console.log("Количество элементов больше B:", countGreaterB);
    console.log("Произведение элементов больше B:", productGreaterB);
} else {
    console.log("Нет элементов больше заданного B");
}