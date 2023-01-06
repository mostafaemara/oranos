// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

enum SenderType {
  bot("bot"),
  user("user");

  final String value;

  const SenderType(this.value);

  factory SenderType.parse(String value) {
    switch (value) {
      case "bot":
        return SenderType.bot;
      case "user":
        return SenderType.user;

      default:
        throw Exception("Invalid Sender Type");
    }
  }
}

class Message {
  Message(this.id, this.content, this.isDelivered, this.senderType);

  final String id;
  final String content;
  bool isDelivered;
  final SenderType senderType;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'content': content,
      'isDelivered': isDelivered,
      'senderType': senderType.value,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      map['id'] as String,
      map['content'] as String,
      map['isDelivered'] as bool,
      SenderType.parse(map['senderType']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source) as Map<String, dynamic>);
}
