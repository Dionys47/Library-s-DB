import mysql.connector

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password=" ",
    database="Library's_DB"
)

def shto_klient(Klient_ID, Klient_Emer, Klient_Mbiemer, Klient_Nr_Telefoni, Klient_Adrese, Klient_Datelindje):
    cursor = db.cursor()
    sql = "INSERT INTO Klienti (Klient_ID, Klient_Emer, Klient_Mbiemer, Klient_Nr_Telefoni, Klient_Adrese, Klient_Datelindje) VALUES (%s, %s, %s, %s, %s, %s)"
    val = (Klient_ID, Klient_Emer, Klient_Mbiemer, Klient_Nr_Telefoni, Klient_Adrese, Klient_Datelindje)
    cursor.execute(sql, val)
    db.commit()

def fshij_klient(Klient_ID):
    cursor = db.cursor()
    sql = "DELETE FROM Klienti WHERE Klient_ID = %s"
    val = (Klient_ID,)
    cursor.execute(sql, val)
    db.commit()

def ndrysho_adrese(Klient_ID, Adrese_e_re):
    cursor = db.cursor()
    sql = "UPDATE Klienti SET Klient_Adrese = %s WHERE Klient_ID = %s"
    val = (Adrese_e_re, Klient_ID)
    cursor.execute(sql, val)
    db.commit()

shto_klient(1, "Emri", "Mbiemri", 123456789, "Adresa", "2000-01-01")

fshij_klient(1)

ndrysho_adrese(2, "Adresa e re")