# Imagen base de Python
FROM python:3.11-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Puerto que expone el contenedor
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
