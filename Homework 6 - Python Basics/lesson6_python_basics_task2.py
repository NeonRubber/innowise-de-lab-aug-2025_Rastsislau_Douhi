print("Input your rectangle measurements to determine its area")
width = float(input("Enter rectangle's width: "))
height = float(input("Enter rectangle's height: "))
if width>0 and height>0:
    print(f"Rectangles's area is: {width * height}")
else:
    print("Invalid height or width input! Try again, bud!")

# В домашних заданиях необходимые математические рассчёты происходят прямо внутри f-строк
# так как отсутствует необходимость хранения переменных для их использования в других местах