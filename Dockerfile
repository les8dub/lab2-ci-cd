FROM python:3.9-slim

WORKDIR /app

# Копируем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект
COPY . .

CMD ["python", "-c", "print('CI/CD РАБОТАЕТ! ВЕРСИЯ 2.0 - АВТООБНОВЛЕНИЕ УСПЕШНО!')"]