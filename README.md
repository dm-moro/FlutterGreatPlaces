<h1 align="center" style="font-weight: bold;">Flutter Great Places</h1>
<p align="center">
<b>Flutter Great Places</b> is a Flutter app to save and explore your favorite places, using GPS location, camera integration and local SQLite storage.
</p>

## 📍 Features

- **Add Places**: Save your favorite locations with a photo and address.
- **GPS Location**: Automatically captures your current location.
- **Camera Integration**: Take photos directly within the app.
- **Place Detail Screen**: View saved place details with map preview.
- **Local Storage**: Data persisted locally using SQLite.

## 💻 Technologies

- Flutter / Dart
- Google Maps SDK
- SQLite
- Device Camera & GPS

## ⚙️ Environment Setup

This project requires a Google Maps API key:

1. Go to [https://console.cloud.google.com](https://console.cloud.google.com) and create an API key with **Maps SDK for Android** enabled.

2. Add your key to `android/app/src/main/AndroidManifest.xml`:
```xml
<meta-data android:name="com.google.android.geo.API_KEY"
           android:value="YOUR_GOOGLE_MAPS_API_KEY"/>
```

3. Add your key to `lib/utils/location_util.dart`:
```dart
const GOOGLE_API_KEY = 'YOUR_GOOGLE_MAPS_API_KEY';
```

> ⚠️ Never commit your real API key. Consider restricting it in the Google Cloud Console to avoid unauthorized usage.

## 💡 How to Use

1. Clone the repository:
```bash
   git clone https://github.com/dm-moro/FlutterGreatPlaces.git
```

2. Navigate to the project directory:
```bash
   cd FlutterGreatPlaces
```

3. Configure your Google Maps API key as described above.

4. Install dependencies:
```bash
   flutter pub get
```

5. Run the app:
```bash
   flutter run
```

## 📌 Credits

> This project was developed based on the **Udemy Flutter Course** by **Leonardo Leitão**.
