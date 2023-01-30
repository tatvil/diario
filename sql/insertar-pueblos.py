import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="diario"
)

mycursor = mydb.cursor()
i = 45600
sql = "INSERT INTO pueblos (cod_postal, nombre, provincia) VALUES (%s, %s, %s)"
while i < 45694:
  print(i)
  val = [ (i,'Talavera de la Reina','45') ]
  i += 1
  mycursor.executemany(sql, val)
  mydb.commit()
  print(mycursor.rowcount, "was inserted.") 
