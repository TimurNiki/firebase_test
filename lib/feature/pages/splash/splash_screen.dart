import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/index.dart';
import '../../../core/resources/resources.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(image: AssetImage(Images.randomLogo)),
            Text(StringConstants.news,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: ColorConstants.white,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
