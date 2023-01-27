FROM python:3.8
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
WORKDIR /app
COPY backend/ ./
RUN pip install setuptools==40
RUN pip install -r /app/requirements.txt
RUN apt-get update && apt-get install systemd wkhtmltopdf -y