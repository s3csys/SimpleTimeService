# 🕒 SimpleTimeService

**SimpleTimeService** is a lightweight web service that displays the current server time. This project is structured with clear separation of concerns for application logic and infrastructure management using Terraform.

---

## 📁 Project Structure

```
SimpleTimeService
├── app/ # Node.js (or your app) source code 
├── terraform/ # Infrastructure as Code using Terraform 
└── README.md 
```

---

## 🚀 Quick Start

### 🔧 Run the App Locally

```bash
cd app
docker build -t s3csys/app:latest .
docker run -d --name simpletime -p 3000:3000 s3csys/app:latest:latest
```

### ☁️ Deploy with Terraform

```bash

cd terraform
terraform init
terraform apply -auto-approve
```

🧰 Tech Stack

- Docker – Containerization
- Terraform – Infrastructure as Code
- AWS – (for launching the ecs)
- Node.js (json server)

