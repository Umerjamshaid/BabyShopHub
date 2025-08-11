# 🎈 BabyShopHub – Modern Baby Shopping Experience

A sleek **Flutter e-commerce application** designed specifically for baby products, featuring a **modern UI** and **seamless user experience**.

---

## ⭐ Features

- 🚀 **Interactive Splash Screen**
- 🔐 **Secure Authentication System**
- 📱 **Device Preview Support**
- 🎯 **BLoC Pattern State Management**
- 🎨 **Custom Material Theme**
- 📐 **Responsive Design**

---

## 🛠️ Technical Stack

| Technology     | Version   |
|----------------|-----------|
| Flutter        | ^3.8.1    |
| flutter_bloc   | ^9.1.1    |
| device_preview | ^1.3.1    |
| flutter_svg    | ^2.2.0    |

---

## 🚀 Getting Started

### **Prerequisites**
- Flutter SDK (**^3.8.1**)
- Windows 10/11
- VS Code or Android Studio
- Git

### **Installation**
1️⃣ **Clone the repository**
```bash
git clone https://github.com/yourusername/babyshophub.git
cd babyshophub
````

2️⃣ **Install dependencies**

```bash
flutter pub get
```

3️⃣ **Run the application**

```bash
flutter run
```

---

## 📁 Project Structure

```
babyshophub/
├── lib/
│   ├── core/
│   │   └── configs/
│   │       └── assets/
│   ├── presentation/
│   │   ├── auth/
│   │   │   └── pages/
│   │   └── splash/
│   │       ├── bloc/
│   │       └── pages/
│   └── main.dart
├── assets/
│   ├── images/
│   └── icons/
└── test/
```

---

## 🎨 Theme Configuration

The app uses a **modern dark theme**:

```dart
theme: ThemeData(
  primaryColor: Colors.grey[900],
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    foregroundColor: Colors.white,
  ),
  // Additional theme properties...
)
```

---

## 📱 Screenshots

<div align="center">
  <img src="screenshots/splash.png" width="200" alt="Splash Screen"/>
  <img src="screenshots/home.png" width="200" alt="Home Screen"/>
  <img src="screenshots/products.png" width="200" alt="Products Screen"/>
</div>

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch:

```bash
git checkout -b feature/amazing-feature
```

3. Commit your changes:

```bash
git commit -m "Add amazing feature"
```

4. Push to the branch:

```bash
git push origin feature/amazing-feature
```

5. Open a Pull Request

---

## 📜 License

Distributed under the **MIT License**. See `LICENSE` for more information.

---

## 👥 Contact & Support

**Author:** Your Name
📧 Email: [your.email@example.com](mailto:your.email@example.com)
🐦 Twitter: [@yourhandle](https://twitter.com/yourhandle)

<div align="center">
  <b>View Demo • Report Bug • Request Feature</b>  
  <br><br>
  ⭐ Remember to star this project if you found it helpful!
</div>
```

