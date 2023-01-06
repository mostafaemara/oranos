import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: "s",
              icon: Image.asset(
                "assets/images/home.png",
                width: 20,
                height: 20,
              )),
          BottomNavigationBarItem(
              label: "s",
              icon: Image.asset(
                "assets/images/star.png",
                width: 20,
                height: 20,
              )),
          BottomNavigationBarItem(
              label: "s",
              icon: Image.asset(
                "assets/images/wallet.png",
                width: 20,
                height: 20,
              )),
          BottomNavigationBarItem(
              label: "s",
              icon: Image.asset(
                "assets/images/profile.png",
                width: 20,
                height: 20,
              )),
        ]);
  }
}
