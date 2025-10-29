# ---------- Base image ----------
FROM python:3.11-slim

# Keep Python speedy & clean in containers
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# System libs needed by numpy/pandas/opencv/folium
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        libgl1 \
        libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Work directory inside the image
WORKDIR /app

# ---------- Install Python deps (cached layer) ----------
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# ---------- Copy your application code & data ----------
COPY . .

# Streamlit default is 8501; we’ll use 8080 (friendlier for K8s/Ingress)
EXPOSE 8080

# Streamlit in containers should be headless and bind to 0.0.0.0
ENV STREAMLIT_BROWSER_GATHER_USAGE_STATS=false \
    STREAMLIT_SERVER_HEADLESS=true \
    STREAMLIT_SERVER_PORT=8080 \
    STREAMLIT_SERVER_ADDRESS=0.0.0.0

# Use this flag in your code to avoid GUI popups (cv2.imshow) in prod
ENV DEPLOY_ENV=dev

# Start the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
