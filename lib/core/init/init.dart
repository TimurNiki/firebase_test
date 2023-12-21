import 'package:flutter/material.dart';
import '../services/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

@immutable
// This is the base class for all the init options that are available in the application
class Init {
  const Init._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
