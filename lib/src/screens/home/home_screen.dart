import 'package:flutter/material.dart';

import 'widgets/app_bottom_nav_bar.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: HomeAppbar(),
      ),
      bottomNavigationBar: AppBottomNavBar(),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
