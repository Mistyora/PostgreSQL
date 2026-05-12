import psycopg2

def get_connection():
    return psycopg2.connect(
        database="Popkova_M_Base_06.05",
        user="postgres",
        password="1234",
        host="127.0.0.1",
        port="5432"
    )
