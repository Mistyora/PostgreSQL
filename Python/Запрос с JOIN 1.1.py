import psycopg2

# Подключение
connection = psycopg2.connect(
    database="Popkova_M_Base_06.05",
    user="postgres",
    password="1234",
    host="127.0.0.1",
    port="5432")

cursor = connection.cursor()

# Запрос: Название мероприятия | Дата мероприятия | Название зала | ФИО клиента
query = """
SELECT 
    e.name_event, 
    e.date_event, 
    h.name_hall, 
    c.surname_client, 
    c.firstname_client, 
    c.middlename_client
FROM events e
JOIN halls h ON e.id_hall = h.id_hall
JOIN client c ON e.id_client = c.id_client
WHERE e.date_event = '2025-09-10';
"""

cursor.execute(query)
rows = cursor.fetchall() # Теперь данные в переменной rows (это список)

for row in rows:
    print(f"Мероприятие: {row[0]}\nДата: {row[1]}\nЗал: {row[2]}\nКлиент: {row[3]} {row[4]} {row[5]}\n")

cursor.close()
connection.close()
