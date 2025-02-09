# SMS Notification System

## 📌 Project Overview
This is a **Rails 7.2** application that provides real-time SMS notifications using **PostgreSQL** as the database.

## 🚀 Tech Stack
- **Ruby:** 3.2.3
- **Rails:** 7.2
- **Database:** PostgreSQL

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

### 4️⃣ **Setup Credentials (if required)**
If you need to edit Rails credentials (for API keys, etc.), use:
```sh
 EDITOR="code --wait" rails credentials:edit
```

### 5️⃣ **Run the Application**
#### **Start the Rails Backend**
```sh
 rails s
```

---

## ✅ **Testing**
Run the test suite:
```sh
 rspec
```

---

## 📄 **Environment Variables**
Create a `.env` file (or use Rails credentials) and add:
```sh
 SMS_API_KEY=your-api-key
```

---
