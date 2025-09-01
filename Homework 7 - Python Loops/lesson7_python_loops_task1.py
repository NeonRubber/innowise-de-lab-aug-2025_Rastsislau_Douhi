shopping_list = ["milk", "bread", "eggs", "butter", "apples"]
print("Список покупок:")
for index, item in enumerate(shopping_list):
    print(f"{index + 1}. {item}")

# Функция enumerate() позволяет возвращать не только элемент списка, но и его индекс