import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(23),
                child: Image.asset(
                  "assets/images/demo_profile.png",
                  fit: BoxFit.cover,
                  width: 23,
                  height: 23,
                )),
            const Spacer(),
            Image.asset(
              "assets/images/logo.png",
              width: 78,
              height: 17,
            ),
            const Spacer(),
            Image.asset(
              "assets/images/search.png",
              width: 18,
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
