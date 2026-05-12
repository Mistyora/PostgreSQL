from database import get_connection

# УДАЛЕНИЕ С ПОИСКОМ
def delete_data():
    connection = get_connection()
    cursor = connection.cursor()

    search = input("\nВведите название (или часть) для удаления: ")

    # Поиск подходящих записей
    cursor.execute("SELECT id_hall, name_hall FROM halls WHERE name_hall ILIKE %s", (f'%{search}%',))
    items = cursor.fetchall()

    if not items:
        print("Ничего не найдено.")
    else:
        for row in items:
            print(f"ID: {row[0]} | Название: {row[1]}")

        id_to_del = input("Введите ID для удаления: ")
        cursor.execute("DELETE FROM halls WHERE id_hall = %s", (id_to_del,))
        connection.commit()
        print("Запись удалена!")

    connection.close()