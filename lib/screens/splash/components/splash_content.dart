import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        Image.asset(image!,
            height: getProportionateScreenHeight(285)),
        const Spacer(),
        Text(text!, textAlign: TextAlign.center),
      ],
    );
  }
}
