FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Train model inside container (optional, or copy pre-trained)
RUN python train.py

EXPOSE 5000

CMD ["python", "app.py"]