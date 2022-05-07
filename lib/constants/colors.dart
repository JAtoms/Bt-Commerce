import 'package:flutter/material.dart';

class GlobalColors {
  static Color lightGreen = const Color(0xff219653);
  static Color globalRed = const Color(0xffeb5757);
  static Color globalBlack = const Color(0xff000000);
  static Color globalAsh = const Color(0xff5f5f5f);
  static Color blueWhite = const Color(0xfff0f3f4);
  static Color ashWhite = const Color(0xfff4f4f5);
  static Color globalWhite = const Color(0xffffffff);

  static const MaterialColor materialPrimaryColor = MaterialColor(
    0xff000000,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which does’t require a swatch.
    <int, Color>{
      50: Color(0xff000000), //10%
      100: Color(0xff000000), //20%
      200: Color(0xff000000), //30%
      300: Color(0xff000000), //40%
      400: Color(0xff000000), //50%
      500: Color(0xff000000), //60%
      600: Color(0xff000000), //70%
      700: Color(0xff000000), //80%
      800: Color(0xff000000), //90%
      900: Color(0xff000000), //100%
    },
  );
}
