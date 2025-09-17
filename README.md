# 📱 Azhattest

A Flutter project for **user management** (Login, Register, Home, Edit User) menggunakan **GetX** sebagai state management dan **HTTP Service** untuk komunikasi dengan backend.

---

## 🚀 Teknologi yang Digunakan
- **Flutter**: `3.29.3`
- **Dart**: `3.7.2`
- **GetX**: State management, navigation, dependency injection.
- **HTTP**: Untuk komunikasi dengan API.
- **Java**: `21.0.6` (untuk environment Android, rilis `2025-01-21`).
- **DevTools**: `2.42.3`

---

## 📂 Struktur Project
## 📂 Struktur Project
```bash
lib/
├── edit/
│   └── edit_screen.dart        # Halaman edit user
│
├── home/
│   ├── home_controller.dart    # Controller untuk user list (GetX)
│   └── home_screen.dart        # Halaman utama (list user)
│
├── login/
│   ├── login_controller.dart   # Controller login (GetX)
│   ├── login_screen.dart       # Halaman login
│   └── register_screen.dart    # Halaman registrasi
│
├── model/
│   └── ...                     # Model data (jika ada)
│
├── service/
│   └── service.dart            # Service HTTP request ke backend
│
├── widget/
│   ├── error_message.dart      # Widget custom error message
│   └── text_input_login.dart   # Widget custom input text
│
└── main.dart                   # Entry point aplikasi
'''

## 🛠️ Fitur Utama
- **Login & Register** user.
- **List User** dengan data dari controller.
- **Edit User** (nama, email, no telepon).
- **Logout** dengan menu AppBar.
- **Reusable Widget** (TextField & Error Message).

---

## 📌 Cara Menjalankan
1. Pastikan **Java 21.0.6** sudah terinstall.
2. Clone repository:
   ```bash
   git clone <repo-url>
   cd azhattest

## API Token Forbidden
kendala tesst token forbiden sehingga tidak bisa rest api untuk menagatasnya membuat data damy



