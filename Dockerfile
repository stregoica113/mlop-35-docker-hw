FROM continuumio/miniconda3:latest

# Делаем /app рабочей папкой
WORKDIR /app

# Копируем sh файл внутрь контейнера
COPY 1.sh /app/1.sh

# Выдаем права на исполнение
RUN chmod +x /app/1.sh

# Устанавливаем пакеты Python
RUN pip install --no-cache-dir mlflow boto3 pymysql

# Запускаем на вывод файл 1.sh
CMD ["/app/1.sh"]
