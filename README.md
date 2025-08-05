# Hamigo

<div align="center">
  <img src="../screenshots/hamigo logo 3 [Recovered]-02.png" alt="Hamigo Logo" width="200"/>
</div>

---

Hamigo is a feature-rich Flutter mobile application developed using FlutterFlow, a powerful no-code platform, integrated with Firebase backend. Built with a focus on rapid development and maintainability, this application provides a comprehensive platform for users with features including user authentication, profile management, category browsing, payment processing, and order management.

## Development Platform

This project is built using [FlutterFlow](https://flutterflow.io), which offers:
- Rapid UI development with drag-and-drop interface
- Built-in Firebase integration
- Custom widget support
- Responsive design capabilities
- Easy deployment options
- Version control integration

## Features

- User Authentication (Firebase Auth)
- User Profile Management
- Category-based Product Browsing
- Order Processing and History
- Address Management
- Payment Integration
- Real-time Notifications
- Support System

## Tech Stack

- Flutter (SDK >=3.0.0)
- Firebase
  - Firebase Auth
  - Cloud Firestore
  - Firebase Core
- FlutterFlow Components
- Additional Packages:
  - cached_network_image
  - chewie
  - file_picker
  - dropdown_button2
  - And more...

## Getting Started

### Prerequisites

1. Flutter SDK (stable channel)
2. Android Studio / VS Code
3. Firebase account and project setup
4. FlutterFlow account (for development)

### Development Setup

You can either work with this codebase directly or use FlutterFlow's visual development environment:

#### FlutterFlow Development
1. Access the FlutterFlow project
2. Make changes using the visual editor
3. Export the project when needed
4. Push changes to version control

#### Local Development

1. Clone the repository:
```bash
git clone [repository-url]
```

2. Navigate to the project directory:
```bash
cd hamigo
```

3. Install dependencies:
```bash
flutter pub get
```

4. Configure Firebase:
   - Add your `google-services.json` to `android/app/`
   - Add your `GoogleService-Info.plist` to `ios/Runner/`

5. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── auth/           # Authentication related code
├── backend/        # Firebase and backend services
├── components/     # Reusable UI components
├── flutter_flow/   # FlutterFlow generated code
└── various pages/ # Different app pages (home, profile, etc.)
```

## Building and Deployment

- For Android:
```bash
flutter build apk --release
```

- For iOS:
```bash
flutter build ios --release
```

## Screenshots

| Screen | Screenshot |
|--------|------------|
| Home Page | ![Home Page](../../../screenshots/home_page.png) |
| Login | ![Login](../../../screenshots/login.png) |
| Sign Up | ![Sign Up](../../../screenshots/signup.png) |
| Category Page | ![Category Page](../../../screenshots/category_page.png) |
| Profile Page | ![Profile Page](../../../screenshots/profile_page.png) |
| Address Page | ![Address Page](../../../screenshots/address_page.png) |
| Payment Page | ![Payment Page](../../../screenshots/payment_page.png) |
| Order History | ![Order History](../../../screenshots/order_history.png) |
| Success Page | ![Success Page](../../../screenshots/success_page.png) |
| Confirm Page | ![Confirm Page](../../../screenshots/confirm_page.png) |

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is proprietary and confidential. Unauthorized copying or distribution of this project's files, via any medium, is strictly prohibited.
