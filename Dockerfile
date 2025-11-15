FROM python:3.11-slim

# Evita buffer en logs
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el proyecto
COPY . .

# Puerto por defecto del config.yaml
ENV STANDARD_API_PORT=8002

# Comando de arranque
CMD ["python", "run.py"]
