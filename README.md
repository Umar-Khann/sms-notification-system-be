# SMS Notification System

## 📌 Project Overview
This is a **Rails 7.2** application that provides real-time SMS notifications using **PostgreSQL** as the database.

## 🚀 Tech Stack
- **Ruby:** 3.2.3
- **Rails:** 7.2
- **Database:** PostgreSQL
- **Redis** (for Sidekiq background jobs)
- **Twilio** (for sending SMS notifications)

---

## 🛠️ Setup Instructions

### 1️⃣ **Clone the Repository**
```sh
 git clone https://github.com/Umar-Khann/sms-notification-system-be.git
 cd sms-notification-system
```

### 2️⃣ **Install Dependencies**
#### **Install Ruby & Rails Dependencies**
```sh
 bundle install
```

### 3️⃣ **Setup the Database**
```sh
 rails db:create db:migrate
```

### 4️⃣ **Setup Environment Variables**
1. Copy the `.env.example` file and create a `.env` file:
   ```sh
   cp .env.example .env
   ```
2. Open `.env` and add your credentials:
   ```sh
   TWILIO_ACCOUNT_SID=your_account_sid
   TWILIO_AUTH_TOKEN=your_auth_token
   TWILIO_PHONE_NUMBER=your_twilio_number
   ```

### 5️⃣ **Setup Credentials (if required)**
If you need to edit Rails credentials (for API keys, etc.), use:
```sh
 EDITOR="code --wait" rails credentials:edit
```

### 6️⃣ **Start Sidekiq (For Background Jobs)**
Make sure Redis is running:
```sh
brew services start redis  # For macOS users
```
Then, start Sidekiq:
```sh
bundle exec sidekiq
```

### 7️⃣ **Run the Application**
#### **Start the Rails Backend**
```sh
 rails s
```

---

## 📜 API Documentation
This application provides several API endpoints for authentication and SMS notifications.

### **Authentication Endpoints**

#### 🔹 Login
**Endpoint:** `POST /login`
**Request Body:**
```json
{
  "user": {
    "email": "user@example.com",
    "password": "password123"
  }
}
```
**Response:**
```json
{
  "status": {
    "code": 200,
    "message": "Logged in successfully.",
    "data": { "user": { ... } }
  }
}
```

#### 🔹 Signup
**Endpoint:** `POST /signup`
**Request Body:**
```json
{
  "user": {
    "email": "user@example.com",
    "password": "password123",
    "name": "John Doe",
    "phone_number": "+1234567890"
  }
}
```

#### 🔹 Logout
**Endpoint:** `DELETE /logout`
**Headers:**
```
Authorization: Bearer <token>
```
**Response:**
```json
{
  "status": 200,
  "message": "Logged out successfully."
}
```

---

### **User Management Endpoints**

#### 🔹 Get Other Users
**Endpoint:** `GET /users/others`
**Headers:**
```
Authorization: Bearer <token>
```
**Response:**
```json
{
  "users": [
    { "id": 2, "name": "Jane Doe", "email": "jane@example.com" }
  ]
}
```

---

### **SMS Notification Endpoints**

#### 🔹 Send Custom SMS
**Endpoint:** `POST /send_sms`
**Headers:**
```
Authorization: Bearer <token>
```
**Request Body:**
```json
{
  "user_id": 2,
  "message": "Hello, please respond ASAP."
}
```
**Response:**
```json
{
  "status": "success",
  "message": "SMS sent successfully to user 2."
}
```

---
