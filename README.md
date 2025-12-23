5-Wordle (Русская версия Wordle)
Простая реализация игры Wordle на Python с поддержкой русского языка. Угадывайте 5-буквенные слова за 6 попыток!

Требования
Python 3.7+
Файл слова.txt с корректным списком 5-буквенных русских слов (по одному на строку)
Для GUI: tkinter (входит в стандартную библиотеку Python, но должен быть установлен в системе)

Запуск без Docker 
Убедитесь, что у вас установлен Python.
Перейдите в папку проекта.
Выполните:

python3 main.py

Запуск через Docker

1. Собрать Docker-образ

docker build -t 5-wordle .

2. Запустить контейнер
Linux / macOS:

# Разрешить доступ к дисплею
xhost +local:root

# Запуск контейнера
docker run --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  5-wordle

Windows:

# В PowerShell или WSL
docker run --rm -e DISPLAY=host.docker.internal:0.0 5-wordle

Структура проекта
5-wordle-/
├── main.py                 # Основной код игры с GUI
├── слова.txt               # Словарь: список 5-буквенных русских слов
├── Dockerfile              # Инструкции для сборки Docker-образа
├── requirements.txt        # Список зависимостей (в данном случае пуст, так как используется только стандартная библиотека)
└── README.md               # Этот файл
