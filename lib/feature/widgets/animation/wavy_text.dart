import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/index.dart';

class WavyText extends StatelessWidget {
  const WavyText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(StringConstants.news,
            textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: ColorConstants.white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
