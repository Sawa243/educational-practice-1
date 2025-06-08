// Функция для расчета количества дней до Нового года и проверки високосного года
function calculate() {
    const inputDate = document.getElementById("inputDate").value;
    const dateParts = inputDate.split('.');

    // Проверка формата даты
    if (dateParts.length !== 3) {
        alert("Пожалуйста, введите дату в формате дд.мм.гггг");
        return;
    }

    const day = parseInt(dateParts[0]);
    const month = parseInt(dateParts[1]) - 1; // JS считает месяцы с 0
    const year = parseInt(dateParts[2]);

    const enteredDate = new Date(year, month, day);

    if (isNaN(enteredDate)) {
        alert("Пожалуйста, введите корректную дату!");
        return;
    }

    const newYear = new Date(year, 11, 31); // 31 декабря текущего года

    // Рассчитываю дни до Нового года
    const diffTime = newYear - enteredDate;
    const daysLeft = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

    // Вывод количества дней
    document.getElementById("daysToNewYear").innerHTML = `Дней до Нового года: ${daysLeft}`;

    // Проверка високосного года
    let leapYear = "не високосный";
    if ((year % 4 === 0 && year % 100 !== 0) || year % 400 === 0) {
        leapYear = "високосный";
    }

    // Вывод информации о високосном годе
    document.getElementById("leapYearInfo").innerHTML = `Год ${year} — ${leapYear}`;
}