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
    apiKey: 'AIzaSyAsXa2QsZtoQjZJoZEOOYKf5aQQlKsnP5s',
    appId: '1:474359166703:web:fa2e0144625d06805fcd1a',
    messagingSenderId: '474359166703',
    projectId: 'medicine-5af6d',
    authDomain: 'medicine-5af6d.firebaseapp.com',
    storageBucket: 'medicine-5af6d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgBNBIvavxfiwN87021k7frKugcNqPF-k',
    appId: '1:474359166703:android:423de341708888cb5fcd1a',
    messagingSenderId: '474359166703',
    projectId: 'medicine-5af6d',
    storageBucket: 'medicine-5af6d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArKQFm14tcS60kIPqc_045P_Q7Zb7ajW8',
    appId: '1:474359166703:ios:5323e3ee249983c05fcd1a',
    messagingSenderId: '474359166703',
    projectId: 'medicine-5af6d',
    storageBucket: 'medicine-5af6d.appspot.com',
    iosBundleId: 'com.example.medicalpage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArKQFm14tcS60kIPqc_045P_Q7Zb7ajW8',
    appId: '1:474359166703:ios:e689213f5f3515815fcd1a',
    messagingSenderId: '474359166703',
    projectId: 'medicine-5af6d',
    storageBucket: 'medicine-5af6d.appspot.com',
    iosBundleId: 'com.example.medicalpage.RunnerTests',
  );
}
