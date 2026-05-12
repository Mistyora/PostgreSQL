from database import get_connection

# ДОБАВЛЕНИЕ С ПОИСКОМ (проверка на дубликаты)
def add_data():
    connection = get_connection()
    cursor = connection.cursor()

    name = input("\nВведите название нового зала: ")

    # Сначала ищем, нет ли такого уже
    cursor.execute("SELECT id_hall FROM halls WHERE name_hall = %s", (name,))
    if cursor.fetchone():
        print("Такой зал уже есть в базе!")
    else:
        cap = input("Введите вместимость: ")
        cursor.execute("INSERT INTO halls (name_hall, capacity) VALUES (%s, %s)", (name, cap))
        connection.commit()
        print("Успешно добавлено!")

    connection.close()
