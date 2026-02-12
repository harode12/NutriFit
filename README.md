# 🥗 NutriFit – Health & Fitness Management Web Application

🔗 **GitHub Repository:** [https://github.com/harode12/NutriFit](https://github.com/harode12/NutriFit)

---

## 🚀 Project Overview

**NutriFit** is a full‑stack health and fitness management web application that helps users track and improve their lifestyle in one centralized platform. It allows users to monitor BMI, manage diet and workout routines, set goals, and visualize progress through interactive dashboards.

Many users struggle to maintain consistency in fitness tracking. NutriFit solves this by combining **BMI tracking, personalized plans, and goal monitoring** into an simple and intuitive web application.

### 🌟 Key Functionalities

* **User Profile Management** – Age, gender, height, weight, goals, and food preferences
* **BMI & Progress Tracking** – Automatic BMI calculation with visual graphs
* **Personalized Diet & Workout Plans** – Generated based on goals and health data
* **Goal Management** – Set deadlines and track completion
* **Admin Dashboard** – Monitor users and manage the system

---

## 🧱 Tech Stack

| Layer              | Technology                                          |
| ------------------ | --------------------------------------------------- |
| **Frontend**       | React.js                                            |
| **Backend**        | ASP.NET Core Web API                                |
| **Database**       | MS SQL Server                                       |
| **Deployment**     | Azure App Service, Azure SQL, Azure Static Web Apps |
| **Authentication** | JWT                                                 |
| **Charts**         | Recharts                                            |

---

## ✨ Features

* ✅ Secure User Registration & Login (JWT Authentication)
* ✅ Profile Management (health & fitness data)
* ✅ Dynamic BMI Calculation & Health Tracking
* ✅ Personalized Diet & Workout Recommendations
* ✅ Goal Tracking with Deadlines
* ✅ Admin Panel for User Monitoring
* ✅ Graphical Reports (monthly progress)
* ✅ Cloud Deployment on Microsoft Azure

---

## ⚙️ Installation & Setup

### 1️⃣ Clone Repository

```bash
git clone https://github.com/harode12/NutriFit.git
cd NutriFit
```

---

### 2️⃣ Backend Setup (ASP.NET Core Web API)

1. Open the backend folder in **Visual Studio 2022** or **VS Code**

2. Configure `appsettings.json`:

   * Azure SQL / Local SQL connection string
   * JWT Key, Issuer, Audience
   * SMTP credentials for OTP email

3. Install dependencies:

```bash
dotnet restore
```

4. Run database migrations:

```bash
dotnet ef database update
```

5. Start backend server:

```bash
dotnet run
```

📍 Backend runs at: `https://localhost:5001`

> CORS is configured to allow frontend communication.

---

### 3️⃣ Frontend Setup (React.js)

```bash
cd NutriFit-Frontend
npm install
npm start
```

📍 Frontend runs at: `http://localhost:3000`

The frontend dynamically connects to backend APIs to display dashboards and analytics.

---

### 4️⃣ Database (MS SQL Server)

* Supports **local SQL Server** or **Azure SQL Database**
* Update connection string in `appsettings.json`
* Database tables include:

  * Users & Profiles
  * Health Conditions
  * Diet & Workout Plans
  * Goals
  * Admin

EF Core migrations automatically generate schema.

---

## ☁️ Azure Deployment

### Backend Deployment

```bash
dotnet publish -c Release -o ./publish
```

* Deploy publish folder to **Azure App Service**
* Configure environment variables in Azure

### Frontend Deployment

* Deploy using **Azure Static Web Apps**
* Set API URL to deployed backend

### Database Deployment

* Create **Azure SQL Database**
* Update backend connection string

---

## 🔐 Authentication & Security

* JWT-based secure API authentication
* OTP password reset via SMTP email
* Restricted CORS policies
* Secure configuration management

---

## 📸 Screenshots / Preview

> *(Add screenshots here)*

* User Dashboard
* Admin Dashboard
* BMI & Progress Graphs

---

## 📂 Folder Structure

```
NutriFit/
├── backend/        # ASP.NET Core Web API
│   ├── Controllers/
│   ├── Models/
│   ├── Data/
│   └── Program.cs
├── frontend/       # React Application
│   ├── src/
│   ├── public/
│   └── package.json
└── README.md
```

---

## 🔮 Future Enhancements

* Push notifications for reminders
* Fitness device integration (smartwatches)
* Advanced analytics dashboard
* AI-based personalized recommendations

---

## 📚 References

* React Documentation
* ASP.NET Core Web API Docs
* Azure SQL Documentation
* JWT Authentication Guides

---

## ⭐ Support

If you like this project, consider giving it a **star ⭐** on GitHub!
