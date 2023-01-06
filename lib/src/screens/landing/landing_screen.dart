import 'package:flutter/material.dart';
import 'package:oranos/src/routes.dart';
import 'package:oranos/src/styles/ui_constants.dart';

import '../common/language_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/onboarding_bg.png",
              ),
              fit: BoxFit.cover),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5 - 63,
          ),
          Image.asset(
            "assets/images/logo.png",
            height: 41,
            width: 184,
          ),
          const SizedBox(
            height: 22,
          ),
          const Text(
            "Expert From Every Planet",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: AppFonts.poppins,
                color: AppColors.grey,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 53,
              child: ElevatedButton(
                child: const Text("Get Started"),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.getStart);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {},
              child: RichText(
                text: TextSpan(
                    text: "Don’t have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground),
                    children: [
                      TextSpan(
                          text: "SignUp",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary))
                    ]),
              )),
          LanguageButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.home,
                (route) => false,
              );
            },
          ),
          const SizedBox(
            height: 22,
          ),
        ]),
      ),
    );
  }
}
