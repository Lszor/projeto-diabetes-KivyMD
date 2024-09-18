import mysql.connector

conexao = mysql.connector.connect(host='127.0.0.1', database='BDdiabetes', user='root', password='')

if conexao.is_connected():
    db_info = conexao.get_server_info()
    cursor = conexao.cursor()
    cursor.execute("select database();")
    linha = cursor.fetchone()
    print('conectado ao banco', linha)
