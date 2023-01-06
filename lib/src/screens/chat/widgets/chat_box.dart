import 'package:flutter/material.dart';

import '../../../styles/ui_constants.dart';

class ChatBox extends StatelessWidget {
  ChatBox({
    Key? key,
    required this.onSend,
  }) : super(key: key);
  final Function(String message) onSend;

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      child: Row(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                hintStyle: const TextStyle(color: AppColors.grey),
                hintText: "Type something…",
                border: InputBorder.none,
                suffixIconConstraints:
                    const BoxConstraints(maxWidth: 20, maxHeight: 20),
                prefixIcon: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.language,
                      color: AppColors.grey,
                      size: 18,
                    ))),
          ),
        )),
        SizedBox(
          width: 60,
          child: Center(
            child: InkWell(
              onTap: () {
                onSend(_controller.text);
                _controller.clear();
              },
              child: Image.asset(
                "assets/images/send.png",
                width: 18,
                height: 18,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
