// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDRTMkgyW7q-kllkFG4B21RTFg_KnwU3Hk',
    appId: '1:1082272695541:web:dea3add5ac21535a1df1bc',
    messagingSenderId: '1082272695541',
    projectId: 'chatapp-d9b08',
    authDomain: 'chatapp-d9b08.firebaseapp.com',
    storageBucket: 'chatapp-d9b08.appspot.com',
    measurementId: 'G-HD3R0RFHHC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtDlnfyA08tdmkr7rP6aOvIGvvVeBb1-0',
    appId: '1:1082272695541:android:f1a83a6d90fd32a61df1bc',
    messagingSenderId: '1082272695541',
    projectId: 'chatapp-d9b08',
    storageBucket: 'chatapp-d9b08.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBGOl0RruCxpsv-SDOxF3jc1hs9Gd7AQE',
    appId: '1:1082272695541:ios:2ab215ca1ed452601df1bc',
    messagingSenderId: '1082272695541',
    projectId: 'chatapp-d9b08',
    storageBucket: 'chatapp-d9b08.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBGOl0RruCxpsv-SDOxF3jc1hs9Gd7AQE',
    appId: '1:1082272695541:ios:146732bafa1244f71df1bc',
    messagingSenderId: '1082272695541',
    projectId: 'chatapp-d9b08',
    storageBucket: 'chatapp-d9b08.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
