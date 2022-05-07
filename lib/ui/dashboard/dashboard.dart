import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'dashboard_landscape.dart';
import 'dashboard_potrait.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? const DashboardPortrait()
            : const DashboardLandscape(),
      ),
    );
  }
}
