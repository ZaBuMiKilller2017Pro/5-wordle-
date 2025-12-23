# Dockerfile
FROM python:3.11-slim

# Установка зависимостей для tkinter (в slim-образе их нет)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3-tk \
        libx11-6 \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Копируем файлы
COPY main.py слова.txt ./

# Запуск игры
CMD ["python3", "main.py"]
