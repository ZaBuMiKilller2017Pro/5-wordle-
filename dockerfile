# Dockerfile
FROM python:3.11-slim

# Установка зависимостей для tkinter и X11
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3-tk \
        libx11-6 \
        && rm -rf /var/lib/apt/lists/*

# Устанавливаем локаль
ENV LANG=C.UTF-8

WORKDIR /app

# Копируем исходный код и словарь
COPY main.py
COPY слова.txt .

# Запуск игры
CMD ["python3", "main.py"]
