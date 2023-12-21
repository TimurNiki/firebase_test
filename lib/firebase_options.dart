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
    apiKey: 'AIzaSyDqlr_sfqD-I9qRlB9S4exQhQFItrr3icE',
    appId: '1:182794784044:web:79c50f61ffc5c2dc557089',
    messagingSenderId: '182794784044',
    projectId: 'fir-testapp-55282',
    authDomain: 'fir-testapp-55282.firebaseapp.com',
    storageBucket: 'fir-testapp-55282.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfWMhdlb2u9DEbf8KIka0nDoUMr2UVl2Q',
    appId: '1:182794784044:android:c533321ed221a031557089',
    messagingSenderId: '182794784044',
    projectId: 'fir-testapp-55282',
    storageBucket: 'fir-testapp-55282.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBokjeryl7pugyg7OEY3z0x6H6CQwFuESQ',
    appId: '1:182794784044:ios:019f75fed4e5eb0d557089',
    messagingSenderId: '182794784044',
    projectId: 'fir-testapp-55282',
    storageBucket: 'fir-testapp-55282.appspot.com',
    iosBundleId: 'com.example.firebaseTestApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBokjeryl7pugyg7OEY3z0x6H6CQwFuESQ',
    appId: '1:182794784044:ios:66e6edafcd39d644557089',
    messagingSenderId: '182794784044',
    projectId: 'fir-testapp-55282',
    storageBucket: 'fir-testapp-55282.appspot.com',
    iosBundleId: 'com.example.firebaseTestApp.RunnerTests',
  );
}
