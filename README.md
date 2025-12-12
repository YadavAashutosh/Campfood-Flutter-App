Here is your fixed, clean, premium-looking README with proper fenced code blocks (code boxes separate & not joining with text).
Just copy-paste — sab sahi se render hoga.


---

🍽️ CampFood – Campus Food Ordering App (Prototype)

A modern, role-based Flutter prototype for campus food ordering, built with Firebase Authentication.
Designed to demonstrate clean UI, structured navigation, and prototype-level features for Students, Vendors, and Admins.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.0+-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/Firebase-Auth-orange?style=for-the-badge">
  <img src="https://img.shields.io/badge/Prototype-UI-lightgrey?style=for-the-badge">
  <img src="https://img.shields.io/badge/Status-Working-green?style=for-the-badge">
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

Add/Update (UI only)

Changes do not reflect in student menu


👨‍💼 Admin

Admin login

View static users/items

Prototype-only admin panel



---

🔥 Firebase (Auth Only)

Email/Password login

Role-based redirection

No Firestore

No Realtime Database

No backend menu storage



---

🛠️ Tech Stack

Flutter (Dart)

Firebase Authentication

Provider (State Management)

Material 3



---

📦 Installation

1️⃣ Clone Repository

git clone https://github.com/yourusername/campfood.git
cd campfood

2️⃣ Install Dependencies

flutter pub get

3️⃣ Firebase Setup

1. Create a Firebase project


2. Add Android/iOS app


3. Enable Email/Password authentication


4. Add google-services.json or GoogleService-Info.plist


5. Initialize Firebase in Flutter




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

Vendor changes not stored

Admin panel static

Wallet is local

Orders not saved

Static items & prices



---

🚀 Future Enhancements

Firestore-powered dynamic menus

Vendor real-time item management

Live order tracking

Admin controls (users/menu/vendors)

Real wallet system

Push notifications



---

📄 License

Open-source — free for learning & academic use.


---

If you want, I can also create: ✔️ Logo
✔️ Screenshots section
✔️ Badges
✔️ Contributing guide

Just tell me!