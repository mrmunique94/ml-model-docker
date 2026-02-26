# ML Model Docker Demo

A simple Iris classifier served via Flask API and containerized with Docker.

## Usage

1. Train model: `python train.py`
2. Run API locally: `python app.py`
3. Test: `curl -X POST -H "Content-Type: application/json" -d '{"features": [5.1,3.5,1.4,0.2]}' http://127.0.0.1:5000/predict`

## Docker

Build: `docker build -t ml-model-app .`
Run: `docker run -p 5000:5000 ml-model-app`