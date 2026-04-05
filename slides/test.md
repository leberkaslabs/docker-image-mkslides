---
title: LeberkasLabs Docker Image

---
# MkSlides 🐳

Create and serve beautiful presentations directly from Markdown.

---
## 🚀 What is MkSlides?

- Simple Markdown-based slide generation  
- Fast preview with built-in development server  
- Fully containerized — no local setup required  

---
## 📦 Getting Started

All you need is Docker. No Python or dependencies required on your host system.

---
## 🔨 Build a Presentation

```bash
docker run \
  --mount type=bind,src=./slides,dst=/slides \
  --rm \
  dudecalledbro/mkslides:latest mkslides build test.md
```

---
## 🌐 Serve Locally

```bash
docker run \
  --mount type=bind,src=./slides,dst=/slides \
  --publish 8000:8000 \
  --rm \
  dudecalledbro/mkslides:latest mkslides serve --dev-addr 0.0.0.0:8000 test.md
```
