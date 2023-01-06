// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:oranos/src/data/model/message.dart';

class ChatState {
  final List<Message> messages;
  final bool isLoading;

  ChatState.init()
      : messages = [],
        isLoading = true;
  ChatState(this.messages, this.isLoading);

  ChatState copyWith({
    List<Message>? messages,
    bool? isLoading,
  }) {
    return ChatState(
      messages ?? this.messages,
      isLoading ?? this.isLoading,
    );
  }
}
