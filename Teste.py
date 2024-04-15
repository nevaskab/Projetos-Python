#criar banco de dados

import sqlite3

conn = sqlite3.connect("base_de_dados.db")

cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS clientes (
        id INTEGER PRIMARY KEY,
        nome TEXT,
        email TEXT,
        cpf TEXT
    )
''')

conn.commit()

# Inserir dados na tabela
cursor.execute(
    "INSERT INTO clientes (nome, email, cpf) VALUES (?, ?, ?)", 
            ("José", "jose.m@gmail.com", "123.456.789-00"))
conn.commit()

# Consultar todos os registros na tabela
cursor.execute("SELECT * FROM clientes")
registros = cursor.fetchall()

for registro in registros:
    id, nome, email, cpf = registro
    print(f"ID: {id}, Nome: {nome}, E-mail: {email}, CPF: {cpf}")

# Fechar a conexão com o banco de dados
conn.close()

