print("Input your temperature in °C")
user_temperature = float(input("Degrees in °C: "))
print(f"Your °C temperature equals {(((user_temperature*9)/5)+32):.4f}°F")

# В результат каждого из вычислений температуры используется форматирование .4f для ограничения
# количества знаков после точки на уровне 4 цифр