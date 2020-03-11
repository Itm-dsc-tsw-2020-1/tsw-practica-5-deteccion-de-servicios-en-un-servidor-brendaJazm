import os
computadora = "200.33.171.13"
from subprocess import Popen, PIPE
process = Popen(['nmap', ' -sT ', computadora], stdout = PIPE, stderr=PIPE)
stdout, stder = process.communicate()
print(stdout)

file = open("C:\prueba.txt","r")
text = ""
for linea in file.readlines(): 
    print (linea)
    text += linea
file.close()
print(text)

texto = text.split('\\r\\n')
print(texto)
print(len(texto))
r = len(texto)
for i in range(r):
    datos = list(filter(None, texto[i].split(" ")))
    if i > 5 and i < (len(texto)-3):
        print(datos)
import mysql.connector as mysql


print ("Python conectándose a MySQL")
#CONEXION A SQL
conexion = mysql.connect( host='localhost', usuario= 'root', clave='', db='escaneo' )
operacion = conexion.cursor()
for i in range(r):
    puertos = list(filter(None, texto[i].split(" ")))
    if i > 5 and i < (len(texto)-4):
        print(puertos)
        val = puertos
        #INSERTANDO PUERTOS A MYSQL DE UNA COMPUTADORA (200.33.171.13)
        query = "INSERT INTO puertos (puerto, estado, servicio, ip) VALUES (%s, %s, %s,'200.33.171.13')"
        operacion.execute(query, val)
        conexion.commit()
conexion.close()