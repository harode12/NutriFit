🥗 NutriFit – Health & Fitness Management Web Application








GitHub Repository: https://github.com/harode12/NutriFit

🔹 Project Overview

NutriFit is a full-stack web application designed to help users manage their health and fitness in one place. Users often struggle to track BMI, diet, workouts, health conditions, and fitness goals, so NutriFit combines all of these features into a single, intuitive platform.

Key functionalities:

User Profile Management: Users enter age, gender, height, weight, fitness goals, and food preferences (vegan, vegetarian, non-vegetarian).

BMI & Progress Tracking: System calculates BMI dynamically, tracks weight graphs, and daily progress.

Personalized Plans: Generates diet and workout plans based on user goals and health conditions.

Goal Setting: Users can set target goals with deadlines and monitor in progress vs completed goals.

Admin Dashboard: Admins monitor all registered users, see latest data and recommendations, and can delete users if required.

Team of 5: I was responsible for backend development, database design, JWT authentication with OTP-based password reset, and Azure deployment.

🔹 Tech Stack
Layer	Technology
Frontend	React.js
Backend	ASP.NET Core Web API
Database	MS SQL Server
Deployment	Azure SQL, Azure App Service, Azure Static Web Apps
Authentication	JWT, OTP-based password reset
Charts	Plotly.js / Chart.js (optional for BMI/weight graphs)
🔹 Features

✅ User Registration & Login with secure JWT Authentication

✅ Profile Management: Age, Gender, Height, Weight, Fitness Goals, Food Preferences

✅ Dynamic BMI Calculation & Health Tracking

✅ Personalized Diet & Workout Plans

✅ Goal Tracking with Deadlines

✅ Admin Panel to monitor users and recommendations

✅ Graphs & Reports: Daily/weekly/monthly progress visualization

✅ Azure Deployment for frontend, backend, and database

🔹 Installation & Setup
1️⃣ Clone Repository
git clone https://github.com/harode12/NutriFit.git
cd NutriFit

2️⃣ Backend Setup (ASP.NET Core Web API)

Open the backend folder in Visual Studio 2022 or VS Code.

Configure the appsettings.json:

Database connection string for Azure SQL (or local SQL Server).

JWT Key, Issuer, Audience for authentication.

SMTP settings for OTP email functionality.

Important: Connection strings, JWT keys, and passwords are securely stored in appsettings.json.

Install required packages:

dotnet restore


Run migrations to set up the database:

dotnet ef database update


Run the backend locally:

dotnet run


Backend will run at: https://localhost:5001

✅ Note: Backend includes CORS configuration to allow frontend communication from local host or deployed app URLs.

3️⃣ Frontend Setup (React.js)

Navigate to frontend folder:

cd NutriFit-Frontend


Install dependencies:

npm install


Run locally:

npm start


Frontend will run at: http://localhost:3000

⚡ The frontend is connected to backend API and dynamically renders user profile, BMI, goals, and graphs.

4️⃣ Database (MS SQL Server)

Can use local SQL Server or Azure SQL Database.

Connection string must be updated in appsettings.json for backend to connect.

Database includes tables for:

Users & Profiles

Health Conditions

Workouts & Diet Plans

Goal Tracking

Admin

🔑 Data migrations are handled using EF Core, so schema can be generated automatically.

5️⃣ Azure Deployment

Backend (ASP.NET Core Web API):

Build and publish:

dotnet publish -c Release -o ./publish


Zip the publish folder and deploy to Azure App Service.

Configure App Settings in Azure to match appsettings.json.

Frontend (React.js):

Deploy using Azure Static Web Apps.

Set API URL in environment variables to point to deployed backend.

Database (Azure SQL):

Deploy database on Azure SQL server.

Update backend connection string with server name, database, username, and password.

🔹 JWT Authentication & Security

JWT Tokens are used for secure API access.

OTP-based password reset is integrated via SMTP (Gmail).

CORS policies allow only frontend URLs to access the API.

🔹 Screenshots / Preview
User Dashboard

Admin Dashboard

BMI & Weight Graph

🔹 Folder Structure
NutriFit/
├─ backend/           # ASP.NET Core Web API
│  ├─ Controllers/
│  ├─ Models/
│  ├─ Data/
│  ├─ Services/
│  └─ Program.cs
├─ frontend/          # React.js App
│  ├─ src/
│  ├─ public/
│  └─ package.json
└─ README.md

🔹 Team Contribution
Member	Role
Me (Hrushikesh Chothe)	Backend, Database Design, JWT Auth, Azure Deployment
Others	Frontend, UI/UX, Workouts & Diet Logic, Admin Panel
🔹 Future Enhancements

Add Push Notifications for goal reminders

Integrate Fitness Device Tracking (e.g., smartwatches)

Add Advanced Analytics for diet and workout trends

Implement AI-based recommendations for personalized fitness plans

🔹 References

React Documentation

ASP.NET Core Web API Docs

Azure SQL Database

JWT Authentication
