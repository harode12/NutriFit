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
<img width="1882" height="860" alt="nutrifit-7" src="https://github.com/user-attachments/assets/a901ab91-f7ac-4312-9e58-a2cf8c5f9273" />
<img width="1890" height="898" alt="nutrifit-6" src="https://github.com/user-attachments/assets/911d2f2b-c165-4d01-b473-456988d54461" />
<img width="1886" height="894" alt="nutrifit-5" src="https://github.com/user-attachments/assets/9ce3b51b-9f0c-432b-a656-ab9ab911a14d" />
<img width="1885" height="901" alt="nutrifit-4" src="https://github.com/user-attachments/assets/59ed0870-fcbe-4f27-8890-033fcaab6d81" />
<img width="1880" height="906" alt="nutrifit-3" src="https://github.com/user-attachments/assets/6a58caac-c745-4982-bb2c-989f49530d9b" />
<img width="1892" height="906" alt="nutrifit-2" src="https://github.com/user-attachments/assets/f529efdf-9eaf-4311-ad37-4676377045f8" />
<img width="1919" height="907" alt="nutrifit-1" src="https://github.com/user-attachments/assets/1fdadf68-968d-4fa4-abe4-24081a09a789" />
<img width="1920" height="1287" alt="nutrifit-16" src="https://github.com/user-attachments/assets/34a015d3-eb3f-400e-af5e-3cf955fe49ad" />
<img width="1920" height="1213" alt="nutrifit-15" src="https://github.com/user-attachments/assets/a9bdb546-311c-4838-9782-4006e730a511" />
<img width="1920" height="1067" alt="nutrifit-14" src="https://github.com/user-attachments/assets/b4fd1086-df81-43c3-946c-2d834451f931" />
<img width="1920" height="1535" alt="nutrifit-13" src="https://github.com/user-attachments/assets/d432477c-c7d7-48b5-8b92-effcf79d7822" />
<img width="1920" height="1743" alt="nutrifit-12" src="https://github.com/user-attachments/assets/10774218-e9c0-470d-bfd9-456dbe17f517" />
<img width="1909" height="889" alt="nutrifit-11" src="https://github.com/user-attachments/assets/b014b9ff-c7ab-4f93-9f09-b7450021b228" />
<img width="1903" height="900" alt="nutrifit-10" src="https://github.com/user-attachments/assets/7446e4e3-8fb4-420e-9816-ce94eb078218" />
<img width="1908" height="892" alt="nutrifit-9" src="https://github.com/user-attachments/assets/34631115-9f5e-490b-8eb1-a5810a86b901" />
<img width="1888" height="899" alt="nutrifit-8" src="https://github.com/user-attachments/assets/8963551a-e0b7-4eba-9181-681f790accfc" />

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
