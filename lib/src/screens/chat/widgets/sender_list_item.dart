import 'package:flutter/material.dart';
import 'package:oranos/src/styles/ui_constants.dart';

class SenderListItem extends StatelessWidget {
  const SenderListItem(
      {super.key, required this.content, required this.isDelivered});
  final String content;
  final bool isDelivered;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerEnd,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              height: 48,
              width: 260,
              padding: const EdgeInsets.all(14),
              alignment: AlignmentDirectional.centerStart,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                content,
                style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onPrimary),
              )),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            "assets/images/del.png",
            fit: BoxFit.fitWidth,
            width: 20,
            color: !isDelivered ? AppColors.grey : null,
          ),
        ],
      ),
    );
  }
}
