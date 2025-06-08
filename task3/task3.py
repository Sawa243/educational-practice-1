import random

def generate_numbers():
    numbers = []  # Создаю список для хранения чисел
    while True:
        user_input = input("Введите число (0 - выход): ")
        try:
            user_num = int(user_input)
        except ValueError:
            print("Пожалуйста, введите корректное целое число.")
            continue  # Повторяем ввод, если введено не число

        if user_num == 0:
            print("Ввод завершен.")
            break  # Прерываю цикл, если введён ноль

        random_num = random.randint(1, 100)
        numbers.append(random_num)  # Сохраняю случайное число в списке
        print(f"Сгенерировано число: {random_num}")

    # Вывод всех сгенерированных чисел (кроме последнего нуля)
    print("\nВсе сгенерированные числа:")
    for num in numbers:
        print(num, end=' ')
    print()

if __name__ == "__main__":
    generate_numbers()