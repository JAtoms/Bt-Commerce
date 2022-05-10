
import 'package:bt_commerce/screens/splash/components/body.dart';
import 'package:flutter/material.dart';


import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is called during starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body()
    );
  }
}
