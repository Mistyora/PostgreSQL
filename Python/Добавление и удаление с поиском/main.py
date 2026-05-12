from add_logic import add_data
from delete_logic import delete_data

# ГЛАВНЫЙ ЦИКЛ (МЕНЮ)
while True:
    print("\n1. Добавить зал\n2. Удалить зал\n3. Выход")
    choice = input("Выбор: ")

    if choice == '1':
        add_data()
    elif choice == '2':
        delete_data()
    elif choice == '3':
        break