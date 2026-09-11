from flask import Flask, render_template, request, redirect
import mysql.connector

app = Flask(__name__)


def conectar():
    conexion = mysql.connector.connect(
        host="localhost",
        user="root",
        password="12345",
        database="moda_db"
    )

    return conexion


@app.route("/")
def inicio():

    conexion = conectar()
    cursor = conexion.cursor(dictionary=True)

    cursor.execute("SELECT * FROM productos")

    productos = cursor.fetchall()

    cursor.close()
    conexion.close()

    return render_template("index.html", productos=productos)


@app.route("/productos")
def productos():

    conexion = conectar()
    cursor = conexion.cursor(dictionary=True)

    cursor.execute("SELECT * FROM productos")

    productos = cursor.fetchall()

    cursor.close()
    conexion.close()

    return render_template("productos.html", productos=productos)


@app.route("/contacto", methods=["GET", "POST"])
def contacto():

    if request.method == "POST":

        nombre = request.form["nombre"]
        correo = request.form["correo"]
        mensaje = request.form["mensaje"]

        conexion = conectar()
        cursor = conexion.cursor()

        cursor.execute(
            "INSERT INTO mensajes (nombre, correo, mensaje) VALUES (%s, %s, %s)",
            (nombre, correo, mensaje)
        )

        conexion.commit()

        cursor.close()
        conexion.close()

        return redirect("/contacto")

    return render_template("contacto.html")


if __name__ == "__main__":
    app.run(debug=True)