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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'secretApikey',
    appId: '1:576270923723:web:32babc360248b82b2d684e',
    messagingSenderId: '576270923723',
    projectId: 'offershub-5e52e',
    authDomain: 'offershub-5e52e.firebaseapp.com',
    storageBucket: 'offershub-5e52e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'secretApikey',
    appId: '1:576270923723:android:fec334170e4491292d684e',
    messagingSenderId: '576270923723',
    projectId: 'offershub-5e52e',
    storageBucket: 'offershub-5e52e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'secretApikey',
    appId: '1:576270923723:ios:547c4724d4bd92072d684e',
    messagingSenderId: '576270923723',
    projectId: 'offershub-5e52e',
    storageBucket: 'offershub-5e52e.appspot.com',
    iosBundleId: 'com.example.offersHub',
  );
}
