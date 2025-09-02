email = str(" USER@DOMAIN.COM ")
#email = str(" ILoveCats@yahoo.com") # Тестовый вариант строки отличный от данного в задаче
cleaned_email = email.lower().strip()
user, domain = cleaned_email.split("@") # Разделение полученного адреса на список с присвоением каждой части имени
print(f"Username: {user}, Domain: {domain}")
