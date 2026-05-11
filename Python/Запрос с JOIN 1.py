import psycopg2

# Подключение
connection = psycopg2.connect(
    database="PopkovaM",
    user="postgres",
    password="1234",
    host="127.0.0.1",
    port="5432")

cursor = connection.cursor()

# Запрос: Название события | Название зала | Фамилия клиента
query = """
SELECT 
    e.name_event,
    h.name_hall,
    c.surname_client
FROM events e
JOIN halls h ON e.id_hall = h.id_hall
JOIN client c ON e.id_client = c.id_client;
"""


cursor.execute(query)
rows = cursor.fetchall() # Теперь данные в переменной rows (это список)

for row in rows:
    print(f"Событие: {row[0]}, Зал: {row[1]}, Клиент: {row[2]}")

cursor.close()
connection.close()
