# Вводим данные
N = int(input("Введите размер массива: "))
A = [int(input(f"Элемент {i+1}: ")) for i in range(N)]
B = int(input("Введите число B: "))

# Инициализация переменных
sum_positive = 0
count_positive = 0
product_greater_b = 1
count_greater_b = 0

# Обрабатываем массив
for num in A:
    if num > 0:
        sum_positive += num
        count_positive += 1
    if num > B:
        product_greater_b *= num
        count_greater_b += 1

# Результаты
print("Сумма положительных элементов:", sum_positive)
print("Количество положительных элементов:", count_positive)
if count_greater_b > 0:
    print("Количество элементов больше B:", count_greater_b)
    print("Произведение элементов больше B:", product_greater_b)
else:
    print("Нет элементов больше заданного B")