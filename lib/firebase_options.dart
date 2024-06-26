// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCFjk3CAVYbylgOFmroeMxWGzl_-al_EUA',
    appId: '1:732572433413:web:a99e0f1e43aa856784f06c',
    messagingSenderId: '732572433413',
    projectId: 'food-delivery-app-a7107',
    authDomain: 'food-delivery-app-a7107.firebaseapp.com',
    storageBucket: 'food-delivery-app-a7107.appspot.com',
    measurementId: 'G-SB192Y60ML',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGwVQ6HRyPNHFDSjDsMHuhhFBW9sMeeGc',
    appId: '1:732572433413:android:aa262cfb71e8f97684f06c',
    messagingSenderId: '732572433413',
    projectId: 'food-delivery-app-a7107',
    storageBucket: 'food-delivery-app-a7107.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-cE4DR7oxq8lzGDErCbTT1IjtnjK5oRU',
    appId: '1:732572433413:ios:1694d0b50cd6616684f06c',
    messagingSenderId: '732572433413',
    projectId: 'food-delivery-app-a7107',
    storageBucket: 'food-delivery-app-a7107.appspot.com',
    iosBundleId: 'com.example.foodDeliveryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-cE4DR7oxq8lzGDErCbTT1IjtnjK5oRU',
    appId: '1:732572433413:ios:1694d0b50cd6616684f06c',
    messagingSenderId: '732572433413',
    projectId: 'food-delivery-app-a7107',
    storageBucket: 'food-delivery-app-a7107.appspot.com',
    iosBundleId: 'com.example.foodDeliveryApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCFjk3CAVYbylgOFmroeMxWGzl_-al_EUA',
    appId: '1:732572433413:web:63683c38730714d884f06c',
    messagingSenderId: '732572433413',
    projectId: 'food-delivery-app-a7107',
    authDomain: 'food-delivery-app-a7107.firebaseapp.com',
    storageBucket: 'food-delivery-app-a7107.appspot.com',
    measurementId: 'G-F99421PLDP',
  );
}
