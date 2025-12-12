# 🍽️ CampFood – Campus Food Ordering App (Prototype)

A modern, role-based Flutter prototype for campus food ordering, built with Firebase Authentication.  
Designed to demonstrate clean UI, structured navigation, and simple prototype-level functionality for Students, Vendors, and Admins.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.0+-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/Firebase-Auth-orange?style=for-the-badge">
  <img src="https://img.shields.io/badge/Prototype-UI-lightgrey?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Working-green?style=for-the-badge">
</p>

---

## ✨ Features

### 👨‍🎓 Student
- Firebase Email/Password login  
- View **static demo food items**  
- Add to Cart  
- Local checkout (wallet + total calculation)  
- Prototype-only (no real-time data)

### 🧑‍🍳 Vendor
- Vendor login via Firebase  
- View **static menu UI**  
- Add/Update buttons (UI only, no backend)  
- Vendor changes do not reflect in student menu

### 👨‍💼 Admin
- Admin login  
- View static item/user list  
- Prototype-only admin panel (no backend operations)

---

## 🔥 Firebase (Used Only for Authentication)
- Email/Password login  
- Role-based user redirection  
- No Firestore  
- No Realtime Database  
- No dynamic backend features  

---

## 🛠️ Tech Stack
- Flutter (Dart)  
- Firebase Authentication  
- Provider (State Management)  
- Material 3 UI  

---

## 📦 Installation

### 1️⃣ Clone Repository
```bash
git clone https://github.com/yourusername/campfood.git
cd campfood

2️⃣ Install Dependencies

flutter pub get

3️⃣ Firebase Setup

1. Create a Firebase project


2. Add Android/iOS app


3. Enable Email/Password Authentication


4. Add google-services.json or GoogleService-Info.plist


5. Configure Firebase in Flutter




---

▶️ Run App

flutter run


---

📁 Project Structure

lib/
├── main.dart
├── screens/
│   ├── common/
│   │   ├── login_screen.dart
│   │   └── signup_screen.dart
│   ├── student/
│   │   ├── student_home.dart
│   │   ├── vendor_menu.dart
│   │   └── cart_screen.dart
│   ├── vendor/
│   │   ├── vendor_home.dart
│   │   └── vendor_menu.dart
│   └── admin/
│       ├── admin_home.dart
│       └── add_user_screen.dart
├── providers/
│   ├── auth_provider.dart
│   ├── wallet_provider.dart
│   └── order_provider.dart
└── models/
    ├── user.dart
    ├── item.dart
    └── order.dart

---

📌 Current Limitations (Prototype)

No real-time menu updates

Vendor changes not stored in backend

Admin panel is static

Wallet balance is local only

Orders are not saved to Firebase

Items, discounts, and prices are static



---

🚀 Future Enhancements

Firestore-powered dynamic menus

Vendor can add/remove items in real-time

Live order tracking + status updates

Admin controls for users, vendors & menu

Real wallet system

Push notifications for order status



---

📄 License

Open-source — free for learning, modification, and academic use.






🍽️ CampFood – Campus Food Ordering App (Prototype)

A modern, role-based Flutter prototype for campus food ordering, built with Firebase Authentication.
Designed to demonstrate clean UI, structured navigation, and simple prototype-level functionality for Students, Vendors, and Admins.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-%3E=3.0-blue?style=for-the-badge" alt="Flutter">
  <img src="https://img.shields.io/badge/Firebase-Auth-orange?style=for-the-badge" alt="Firebase Auth">
  <img src="https://img.shields.io/badge/Prototype-UI-lightgrey?style=for-the-badge" alt="Prototype UI">
  <img src="https://img.shields.io/badge/Status-Working-green?style=for-the-badge" alt="Status">
</p>
---

✨ Features

👨‍🎓 Student

Firebase Email/Password login

View static demo food items

Add to Cart

Local checkout (wallet + total calculation)

Prototype-only (no real-time data)


🧑‍🍳 Vendor

Vendor login via Firebase

View static menu UI

Add / Update buttons (UI only, no backend)

Vendor changes do not reflect in student menu


👨‍💼 Admin

Admin login

View static item / user list

Prototype-only admin panel (no backend operations)



---

🔥 Firebase (Used Only for Authentication)

Email/Password login

Role-based user redirection

No Firestore

No Realtime Database

No dynamic backend features



---

🛠️ Tech Stack

Flutter (Dart)

Firebase Authentication

Provider (State Management)

Material 3 UI



---

📦 Installation

1️⃣ Clone repository

git clone https://github.com/yourusername/campfood.git
cd campfood

2️⃣ Install dependencies

flutter pub get

3️⃣ Firebase setup

1. Create a Firebase project


2. Add Android and/or iOS app in Firebase console


3. Enable Email/Password authentication


4. Download and add google-services.json (Android) or GoogleService-Info.plist (iOS) to your Flutter project


5. Configure Firebase in Flutter (e.g., using flutterfire configure or manual setup)




---

▶️ Run the app

flutter run


---

📁 Project structure

lib/
├── main.dart
├── screens/
│   ├── common/
│   │   ├── login_screen.dart
│   │   └── signup_screen.dart
│   ├── student/
│   │   ├── student_home.dart
│   │   ├── vendor_menu.dart
│   │   └── cart_screen.dart
│   ├── vendor/
│   │   ├── vendor_home.dart
│   │   └── vendor_menu.dart
│   └── admin/
│       ├── admin_home.dart
│       └── add_user_screen.dart
├── providers/
│   ├── auth_provider.dart
│   ├── wallet_provider.dart
│   └── order_provider.dart
└── models/
    ├── user.dart
    ├── item.dart
    └── order.dart


---

📌 Current limitations (Prototype)

No real-time menu updates

Vendor changes are not stored in the backend

Admin panel is static

Wallet balance is local only (not persisted)

Orders are not saved to Firebase

Items, discounts, and prices are static



---

🚀 Future enhancements

Firestore-powered dynamic menus

Vendor can add/remove items in real-time

Live order tracking & status updates

Admin controls for users, vendors & menu management

Real wallet system persisted in Firestore

Push notifications for order status



---

📄 License

Open-source — free for learning, modification, and academic use.