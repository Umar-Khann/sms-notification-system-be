# SMS Notification System

## 📌 Project Overview
This is a **Rails 7.2** application that provides real-time SMS notifications using **PostgreSQL** as the database.

## 🚀 Tech Stack
- **Ruby:** 3.2.3
- **Rails:** 7.2
- **Database:** PostgreSQL
- **Redis** (for Sidekiq background jobs)

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

### **5️⃣ Configure Environment Variables**
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

### 4️⃣ **Setup Credentials (if required)**
If you need to edit Rails credentials (for API keys, etc.), use:
```sh
 EDITOR="code --wait" rails credentials:edit
```

### **6️⃣ Start Sidekiq (For Background Jobs)**
Make sure Redis is running:
```sh
brew services start redis  # For macOS users
```
Then, start Sidekiq:
```sh
bundle exec sidekiq
```

### 5️⃣ **Run the Application**
#### **Start the Rails Backend**
```sh
 rails s
```

---

## 📄 **Environment Variables**
Create a `.env` file (or use Rails credentials) and add:
```sh
 TWILIO_ACCOUNT_SID=your_account_sid
 TWILIO_AUTH_TOKEN=your_auth_token
 TWILIO_PHONE_NUMBER=your_twilio_number
```

---
