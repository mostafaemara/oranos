import 'package:flutter/material.dart';

class BotSpeech extends StatelessWidget {
  const BotSpeech({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 270,
        height: 250,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 15,
              width: 247,
              height: 134,
              child: RichText(
                text: TextSpan(
                    text: "Hi, My name is ",
                    style: TextStyle(
                        fontSize: 19,
                        color: Theme.of(context).colorScheme.onBackground),
                    children: const [
                      TextSpan(
                          text: "Oranobot",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              "\nI will always be there to help and assist you. \n \nSay"),
                      TextSpan(
                          text: " Start",
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      TextSpan(text: " To go to Next."),
                    ]),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/images/bg.png",
                  width: 230,
                  height: 250,
                ))
          ],
        ));
  }
}
