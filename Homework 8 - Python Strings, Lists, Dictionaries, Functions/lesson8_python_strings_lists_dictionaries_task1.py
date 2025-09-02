the_string = str("Python Programming")
#the_string = str("CSS/HTML/JS Frontend") # Тестовая строка отличная от данной в задаче
print(f"Your string length is {len(the_string)}")
print(f"It has symbol '{the_string[7]}' under index 7")
print(f"'{the_string[-3:]}' are it's last 3 symbols") # Срез последних трёх символов строки
if "gram" in the_string:
    print("And there is 'gram' in it!")
else:
    print("But there is no 'gram' in it!")