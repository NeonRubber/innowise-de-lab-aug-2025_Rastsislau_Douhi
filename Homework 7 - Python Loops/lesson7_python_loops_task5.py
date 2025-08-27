print("Enter desired height and width of your rectangle")
height = int(input("Height: "))
width = int(input("Width: "))
if height > 0 and width > 0:
    for height_counter in range(height):
        for width_counter in range(width):
            print("*", end="")
        print()
else:
    print("Your rectangle measures can not be negative or zero!")

# Добавлена проверка на неравенство проекций прямоугольника нулю либо отрицательному числу