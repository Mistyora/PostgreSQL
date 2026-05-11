import psycopg2

# Подключение
conn = psycopg2.connect(
    database="PopkovaM",
    user="postgres",
    password="1234",
    host="localhost"
)

# Создаем курсор
cur = conn.cursor()

# Выполняем запрос
cur.execute("SELECT * FROM staff;")

# Забираем данные в переменную
data = cur.fetchall()

# Пользуемся данными (это список кортежей)
for item in data:
    print(item)

# Закрываем всё
cur.close()
conn.close()
