FROM python:3.10-slim
WORKDIR /app
COPY . /app
EXPOSE 5000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
