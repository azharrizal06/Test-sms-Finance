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

```
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
```
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


## Hasil test

<img width="1080" height="2280" alt="Screenshot_1758119677" src="https://github.com/user-attachments/assets/051776b0-4a98-4e71-9c59-e98acb53c18c" />

<img width="1080" height="2280" alt="Screenshot_1758119876" src="https://github.com/user-attachments/assets/2c43ccee-c7c3-4349-8381-6f454e5ac120" />

<img width="1080" height="2280" alt="Screenshot_1758119530" src="https://github.com/user-attachments/assets/857b4b33-7a2d-4c33-b846-165f9b1e6c2d" />

<img width="1080" height="2280" alt="Screenshot_1758119169" src="https://github.com/user-attachments/assets/38a70e48-2ef5-446a-a4fd-628c95a87f31" />

