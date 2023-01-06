// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../styles/ui_constants.dart';

class ReceiverListItem extends StatelessWidget {
  const ReceiverListItem({
    Key? key,
    required this.content,
  }) : super(key: key);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/bot_icon.png",
            width: 38,
            height: 38,
          ),
          const SizedBox(
            width: 14,
          ),
          Container(
              height: 48,
              alignment: Alignment.center,
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onBackground),
              )),
        ],
      ),
    );
  }
}
