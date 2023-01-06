import 'package:flutter/material.dart';
import 'package:oranos/src/screens/get_start/widgets/bot_speach.dart';

import '../../routes.dart';
import '../common/language_button.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 3),
          const Center(child: BotSpeech()),
          Image.asset(
            "assets/images/bot.png",
            width: 241,
            height: 300,
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
              width: 147,
              height: 53,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.chat);
                  },
                  child: const Text("Next"))),
          const Spacer(),
          LanguageButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.home,
                (route) => false,
              );
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
