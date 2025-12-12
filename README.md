🍽️ CampFood – Campus Food Ordering Prototype

A simple Flutter prototype for a campus food ordering app with Firebase Authentication and role-based login for Students, Vendors, and Admins.


---

✨ Features

👨‍🎓 Student (Prototype)

Login with Firebase Authentication

View static demo food items

Add items to cart

Checkout (local calculation only, no backend logic)

Simple wallet balance (local/dummy)


🧑‍🍳 Vendor (Prototype)

Login with Firebase Authentication

View static menu list

Add/update items (UI only – no database update)

Changes do not affect student screen


👨‍💼 Admin (Prototype)

Login with Firebase Authentication

View static list of users/items

No real admin controls (prototype only)



---

🔥 Firebase Usage

Only one Firebase service is used:

1. Firebase Authentication

Email/Password login

Redirects users to Student/Vendor/Admin screens based on stored role

No Firestore, no real-time database, no storage



---

🛠️ Tech Stack

Flutter (Dart)

Firebase Authentication

Provider (basic state handling)



---

📦 Installation

1️⃣ Clone the repository

git clone https://github.com/yourusername/campfood.git
cd campfood

2️⃣ Install dependencies

flutter pub get

3️⃣ Connect Firebase

Create a Firebase project

Enable Email/Password Authentication

Add google-services.json and Firebase config to your Flutter app


4️⃣ Run the app

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

