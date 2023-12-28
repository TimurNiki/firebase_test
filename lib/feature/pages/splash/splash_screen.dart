import 'package:firebase_test_app/feature/widgets/animation/wavy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/resources/resources.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage(Images.randomLogo)),
            WavyText()
          ],
        ),
      ),
    );
  }
}
