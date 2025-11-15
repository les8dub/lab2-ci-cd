FROM python:3.9-slim

WORKDIR /app

# Копируем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект
COPY . .

CMD ["python", "-c", "import time; print('CI/CD РАБОТАЕТ! ВЕРСИЯ 2.0'); time.sleep(3600)"]
