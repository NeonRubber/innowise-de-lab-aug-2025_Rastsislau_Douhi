#nums = [2, 7, 11, 15]
#target = 9
#nums = [3, 2, 4]
#target = 6
nums = [3, 85, 13, 99, 24, 73, 11, 8, 1, 18] # Тестовый список с отличными от данных в задании значениями
target = 42
for x in range(len(nums)): # Поочерёдная переборка индексов значений из списка "nums"
    for y in range(x + 1, len(nums)): # Переборка, аналогичная оной из внешнего цикла, но с шагом в +1 во избежание прибавления числа самого к себе
        if nums[x] + nums[y] == target: # Сравнение суммы первого числа из внешнего цикла и второго числа из внутреннего цикла с искомым значением "target"
            print(f"Target sum, which is {target}, can be gained from addition of {nums[x]} to {nums[y]}, which have indexes of {x} and {y} respectively.")
            break # Вывод текстовой строки с содержанием чисел и их индексов с прерыванием цикла в случае совпадения суммы с "target"