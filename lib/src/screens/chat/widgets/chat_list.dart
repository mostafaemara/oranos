import 'package:flutter/material.dart';
import 'package:oranos/src/data/model/message.dart';
import 'package:oranos/src/screens/chat/widgets/receiver_list_item.dart';
import 'package:oranos/src/screens/chat/widgets/sender_list_item.dart';

class ChatList extends StatelessWidget {
  final List<Message> messages;
  final ScrollController controller;
  const ChatList({super.key, required this.messages, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: messages[index].senderType == SenderType.user
            ? SenderListItem(
                content: messages[index].content,
                key: Key(messages[index].id),
                isDelivered: messages[index].isDelivered,
              )
            : ReceiverListItem(
                key: Key(messages[index].id),
                content: messages[index].content,
              ),
      ),
      itemCount: messages.length,
    );
  }
}
