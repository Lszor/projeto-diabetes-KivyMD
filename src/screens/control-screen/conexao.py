import mysql.connector

conexao = mysql.connector.connect(host='127.0.0.1', database='BDdiabetes', user='root', password='')

if conexao.is_connected():
    db_info = conexao.get_server_info()
    print("Conectado ao servidor MySQL versão ", db_info)
    cursor = conexao.cursor()
    cursor.execute("select database();")
    linha = cursor.fetchone()
    print("Conectado ao banco de dados ", linha)
# if con.is_connected():
# cursor.close()
# con.close()
# print("Conexão ao MySQL foi encerrada")
