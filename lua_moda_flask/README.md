# LÚA Moda — Flask + MySQL

## 1. Crear entorno
python -m venv venv

Windows:
venv\Scripts\activate

## 2. Instalar
pip install -r requirements.txt

## 3. Base de datos
Abrir MySQL Workbench y ejecutar `database.sql`.

## 4. Ejecutar
python app.py

Abrir:
http://127.0.0.1:5000

## 5. Para despliegue
Configurar estas variables de entorno en el hosting:
DB_HOST
DB_USER
DB_PASSWORD
DB_NAME
SECRET_KEY

No subir contraseñas reales al código.
