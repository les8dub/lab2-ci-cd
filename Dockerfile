FROM python:3.9-slim

WORKDIR /app

# Копируем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект
COPY . .

# Если у вас есть основной скрипт, укажите его
# CMD ["python", "main.py"]
# ИЛИ для демонстрации:
CMD ["python", "-c", "print('CI/CD with Docker - Release version!')"]
