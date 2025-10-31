🌾 AI-Based Farm Management System — FARM_ERA
🚀 Overview

FARM_ERA is an AI-powered farm management and automation platform designed to help farmers optimize productivity, sustainability, and resource efficiency through data-driven insights.
It integrates AI, GIS mapping, IoT simulations, and predictive analytics into a unified system — built using Python, Streamlit, OpenCV, and Docker — and deployed seamlessly on Google Kubernetes Engine (GKE) via Google Cloud Build (CI/CD).

🧠 Project Aim

To build an intelligent and automated decision-support system that:

Monitors real-time farm conditions using simulated IoT sensors.

Provides predictive analytics for crop yield forecasting, pest detection, and irrigation scheduling.

Offers GIS-based mapping and analytics dashboards for smart resource management.

Enhances sustainability by optimizing water, fertilizer, and pesticide usage.

🏗️ System Architecture

The system follows a modular microservice-based architecture, deployed using Docker containers and orchestrated on GKE.

Layer	Description
Data Acquisition Layer	Simulates IoT sensor data (soil moisture, temperature, rainfall) and integrates external weather APIs.
AI & Analytics Layer	Uses ML models for yield prediction, irrigation optimization, and anomaly detection.
Optimization & Decision Layer	Automates irrigation control and generates smart crop management recommendations.
Visualization Layer	Provides interactive dashboards (Streamlit), GIS maps (Folium), and real-time video feeds (OpenCV).
🧩 Key Features
Module	Description
🏡 Home Dashboard	Centralized hub with quick navigation to all modules.
🗺️ Field Mapping	Upload or draw GeoJSON polygons to calculate field area and boundary distances.
🌱 Crop Planning	Input soil and crop data to simulate yield predictions and visualize rainfall impact.
📊 Crop History	Log fertilizer, pesticide, and water usage; view historical trends with graphs.
🐛 Pest & Disease Management	Record pest/disease data, predict risks, and simulate control strategies.
☁️ Weather Tracking	Visualize weather patterns (temperature, humidity, rainfall trends, correlations).
💧 Irrigation Management	Automate irrigation monitoring using simulated sensor data and OpenCV-based live feeds.
🧰 Tools & Technologies
Category	Tools Used
Programming Language	Python
Frameworks	Streamlit, Folium, OpenCV
AI/ML Libraries	TensorFlow, scikit-learn, NumPy, Pandas
Visualization	Matplotlib, Seaborn
GIS Tools	GeoJSON, Shapely, Geopy
DevOps & Cloud	Docker, Kubernetes (GKE), Google Cloud Build (CI/CD), Artifact Registry
Version Control	GitHub
⚙️ Deployment & Setup
🐳 Local Setup (Development)
# 1️⃣ Clone the repository
git clone https://github.com/sainadha-reddy3/ai-farm-gke-deploy.git
cd ai-farm-gke-deploy

# 2️⃣ Create a virtual environment
python -m venv venv
source venv/bin/activate   # Mac/Linux
venv\Scripts\activate      # Windows

# 3️⃣ Install dependencies
pip install -r requirements.txt
pip install streamlit folium shapely geopy opencv-python pandas matplotlib seaborn numpy

# 4️⃣ Run the application locally
streamlit run app.py

☁️ Cloud Deployment (CI/CD via Cloud Build)

The project is containerized using Docker.

Google Cloud Build automatically builds and pushes Docker images to Artifact Registry.

Each push to GitHub triggers deployment on Google Kubernetes Engine (GKE) via the cloudbuild.yaml pipeline.

CI/CD Flow:
GitHub → Cloud Build → Artifact Registry → GKE Cluster


This ensures:

Automated build and deploy pipeline

Version-controlled container images

Zero-downtime rollouts on each commit

🧪 How It Works

User Input: Upload GeoJSON maps or enter field coordinates.

Mapping: The system visualizes and calculates field boundaries and areas.

Sensor Simulation: Generates soil moisture and water flow data dynamically (irrigator.py).

AI Analytics: Predicts yield and irrigation schedules using machine learning.

Monitoring: Real-time irrigation feed via OpenCV (cam.py).

Visualization: Generates heatmaps and trend charts using Matplotlib & Seaborn.

🧾 Example Use Case

A farmer logs into FARM_ERA, uploads a GeoJSON map, enters soil data, and starts real-time irrigation monitoring.
The system simulates water flow data, visualizes rainfall, predicts yield, and recommends irrigation schedules — all from a secure, web-based dashboard.

🛡️ Data Security

All sensor and field data are stored locally or securely within GCP resources.

Role-based access control can be enabled for multi-user environments.

No external APIs are required; system can operate offline in secure setups.

🔮 Future Enhancements

Integrate real IoT hardware (DHT11, soil moisture sensors).

Deploy TensorFlow models for advanced yield and pest predictions.

Add voice-based farm assistant chatbot using local LLMs.

Expand to multi-cloud dashboards (AWS/GCP) for regional farm monitoring.

✅ Current Status:

Application containerized using Docker.

Successfully deployed and tested on Google Kubernetes Engine (GKE).

Integrated with Google Cloud Build for CI/CD automation.
