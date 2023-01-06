import 'package:oranos/src/data/model/message.dart';

const _dummyMessages = [
  {
    "id": "1",
    "content": "Hi, Whats You Name Firstname?",
    "senderType": "bot",
    "isDelivered": true,
  },
  {
    "id": "2",
    "content": "Mostafa",
    "senderType": "user",
    "isDelivered": true,
  },
  {
    "id": "3",
    "content": "Ok, Mostafa Whats Your Lastname?",
    "senderType": "bot",
    "isDelivered": true,
  },
  {
    "id": "4",
    "content": "Emara",
    "senderType": "user",
    "isDelivered": true,
  },
];

class ChatRepository {
  Future<List<Message>> readChat() async {
    await Future.delayed(const Duration(seconds: 1));
    return _dummyMessages.map((e) => Message.fromMap(e)).toList();
  }

  Future<void> sendMessage(Message message) async =>
      Future.delayed(const Duration(seconds: 1));
}
