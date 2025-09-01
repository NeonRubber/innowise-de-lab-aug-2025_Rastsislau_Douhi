secret_number = 7
print("Let's play a guess game! I think of a number between 1 and 10, and you try to guess it!")
user_number = int(input("So, what number is it? "))
while user_number != secret_number:
        print("Wrong one! Try again!")
        user_number = int(input("Your next guess is: "))
print("You guessed it!")