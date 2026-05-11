import psycopg2
from psycopg2 import Error

def fetch_events_data():
    connection = None
    try:
        # Подключение к базе данных
        connection = psycopg2.connect(
            user="postgres",
            password="1234", # пароль
            host="127.0.0.1",
            port="5432",
            database="PopkovaM"
        )

        cursor = connection.cursor()

        # Соединяем события с залами, клиентами и персоналом
        select_query = """
        SELECT 
            e.id_event, 
            e.name_event, 
            e.date_event, 
            h.name_hall, 
            c.surname_client, 
            s.surname AS staff_surname
        FROM public.events e
        JOIN public.halls h ON e.id_hall = h.id_hall
        JOIN public.client c ON e.id_client = c.id_client
        JOIN public.staff s ON e.id_staff = s.id_staff;
        """

        cursor.execute(select_query)
        records = cursor.fetchall()

        print(f"--- Список мероприятий (Всего: {len(records)}) ---")
        print(f"{'ID':<4} | {'Событие':<20} | {'Дата':<12} | {'Зал':<15} | {'Клиент':<15} | {'Сотрудник'}")
        print("-" * 90)

        for row in records:
            print(f"{row[0]:<4} | {row[1]:<20} | {str(row[2]):<12} | {row[3]:<15} | {row[4]:<15} | {row[5]}")

    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL:", error)

    finally:
        if connection:
            cursor.close()
            connection.close()
            print("\nСоединение с PostgreSQL закрыто")

if __name__ == "__main__":
    fetch_events_data()
