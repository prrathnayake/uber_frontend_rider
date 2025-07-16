# 🚖 Uber Frontend Rider (Flutter) – Under Development

A **modern Flutter mobile application** serving as the rider-facing frontend for the Uber Backend Clone (C++ microservices). This app enables user registration, authentication, ride requests, and real-time location updates through integration with a modular backend architecture.

---

![Uber Rider UI Mockup](https://github.com/user-attachments/assets/02bb3d93-590f-4973-9c9c-e2b3b13d0ac0)

---

## 📱 Features

- 🔐 **Authentication**
  - Login & Sign Up
  - JWT token-based session handling
- 🚗 **Ride Management**
  - Request rides with pickup/drop location
  - Track ride status (`Requested → Accepted → In-Progress → Completed`)
- 📍 **Location Services**
  - Update rider location
  - View nearby available drivers (via H3 geospatial indexing)
- 🌐 **HTTP Integration**
  - Communicates with C++ backend microservices (REST APIs)
- 🧭 **Navigation**
  - Bottom navigation bar with Home, Rides, Profile, Settings
- 🎨 **Clean UI**
  - Custom input widgets and reusable components
- 🧪 **Form Validation**
  - Reusable validators, login/signup forms with error handling

---

## 🏗️ Tech Stack

| Layer        | Technology           |
|--------------|----------------------|
| Language     | Dart                 |
| Framework    | Flutter              |
| State Mgmt   | setState (or Riverpod/Provider optionally) |
| Networking   | HTTP, Dio (optional) |
| Auth         | JWT-based via REST   |
| Maps         | Google Maps (optional) |
| Platform     | Android, iOS, Web    |

---

## 📂 Folder Structure

```plaintext
uber_frontend_rider/
├── lib/
│   ├── main.dart                    # Entry point
│   ├── screens/                     # Screens for app
│   │   ├── login_screen.dart
│   │   ├── signup_screen.dart
│   │   ├── home_screen.dart
│   │   ├── ride_screen.dart
│   │   ├── profile_screen.dart
│   │   └── settings_screen.dart
│   ├── widgets/                     # Reusable UI widgets
│   │   └── custom_input_field.dart
│   ├── services/                    # API client & data handling
│   ├── models/                      # User, Ride models etc.
│   └── utils/                       # Validators, helpers
│
├── assets/                          # Icons, images
├── pubspec.yaml                     # Dependencies
└── README.md
