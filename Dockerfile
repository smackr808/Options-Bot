FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential libgl1-mesa-glx

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
