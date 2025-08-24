print("Lets calculate your numbers!")
first_number = float(input("Your first number: "))
second_number = float(input("Your second number: "))
operator = input("Your operator: ")
if operator == "/" and second_number == 0:
    print("This wont work! You are trying to divide by zero!")
elif operator == "+":
    print(f"Your result is {(first_number + second_number):.4f}!")
elif operator == "-":
    print(f"Your result is {(first_number - second_number):.4f}!")
elif operator == "/":
    print(f"Your result is {(first_number / second_number):.4f}!")
elif operator == "*":
    print(f"Your result is {(first_number * second_number):.4f}!")
else:
    print("Your operator is wrong. Try again!")

# В начале блока elif используется проверка на попытку деления на ноль
# для предотвращения вылета с вызванной этим делением ошибкой

# В результат каждого из выражений используется форматирование .4f для ограничения
# количества знаков после точки на уровне 4 цифр