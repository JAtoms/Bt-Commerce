import 'package:flutter/material.dart';

import 'widgets/banner_widget.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/top_navigation_widget.dart';

class DashboardPortrait extends StatelessWidget {
  const DashboardPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TopNavigationWidget(),
        SearchBarWidget(),
        const BannerWidget()
      ]),
    );
  }
}
