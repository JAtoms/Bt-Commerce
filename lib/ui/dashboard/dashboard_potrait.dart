import 'package:flutter/material.dart';

import 'widgets/search_bar_widget.dart';
import 'widgets/top_navigation_widget.dart';




class DashboardPortrait extends StatelessWidget {
  DashboardPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TopNavigationWidget(),
        SearchBarWidget()
      ]),
    );
  }
}

