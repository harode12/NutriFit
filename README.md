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

<img width="1919" height="907" alt="nutrifit-1" src="https://github.com/user-attachments/assets/86f886fe-ba8c-462b-955c-4f5d1180a019" />

<img width="1892" height="906" alt="nutrifit-2" src="https://github.com/user-attachments/assets/c7719bcd-f4bb-4efc-bdf3-264a7d2b73ed" />

<img width="1880" height="906" alt="nutrifit-3" src="https://github.com/user-attachments/assets/d3008bcc-b392-475d-af0f-8e13016d87c2" />

<img width="1885" height="901" alt="nutrifit-4" src="https://github.com/user-attachments/assets/81535976-7273-4083-bdaa-814b09ec4625" />

<img width="1886" height="894" alt="nutrifit-5" src="https://github.com/user-attachments/assets/77828ef9-908a-4214-8975-db7662963313" />

<img width="1890" height="898" alt="nutrifit-6" src="https://github.com/user-attachments/assets/284dff4f-eec8-4f35-bd42-f9f60eb7195e" />

<img width="1882" height="860" alt="nutrifit-7" src="https://github.com/user-attachments/assets/bb5024ad-3ea5-4479-b114-bb7f1d42104e" />

<img width="1888" height="899" alt="nutrifit-8" src="https://github.com/user-attachments/assets/588c52b9-02df-4a6e-bce4-6ca9759f5474" />

<img width="1908" height="892" alt="nutrifit-9" src="https://github.com/user-attachments/assets/c71c792d-8c0f-499a-9212-e890f389ac34" />

<img width="1903" height="900" alt="nutrifit-10" src="https://github.com/user-attachments/assets/1ef43643-0de3-44b1-9a57-d69f59637ba3" />

<img width="1909" height="889" alt="nutrifit-11" src="https://github.com/user-attachments/assets/cd17befa-e9e0-40ec-978c-9cbf153e64f2" />

<img width="1920" height="1743" alt="nutrifit-12" src="https://github.com/user-attachments/assets/569cedf9-8d5d-43e4-b132-e9beafa77c08" />

<img width="1920" height="1535" alt="nutrifit-13" src="https://github.com/user-attachments/assets/847bf974-1a51-44a6-8067-e1ccc06f49d8" />

<img width="1920" height="1067" alt="nutrifit-14" src="https://github.com/user-attachments/assets/158c4e06-92db-43c8-b7ba-d6f7c92e7e06" />

<img width="1920" height="1213" alt="nutrifit-15" src="https://github.com/user-attachments/assets/3f0b0ed5-1840-4c8f-8438-8eddb8d866e3" />

<img width="1920" height="1287" alt="nutrifit-16" src="https://github.com/user-attachments/assets/2760486f-3044-4f23-bfe1-088312987719" />


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
