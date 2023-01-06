import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/src/bloc/chat/chat_state.dart';
import 'package:oranos/src/data/model/message.dart';
import 'package:oranos/src/data/repository/chat_repository.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepository _chatRepo;
  ChatCubit(this._chatRepo) : super(ChatState.init());

  void init() async {
    try {
      final messages = await _chatRepo.readChat();
      emit(state.copyWith(isLoading: false, messages: messages));
    } catch (e) {
      //TODO error handling
    }
  }

  void sendMessage(String content) async {
    try {
      final id = DateTime.now().toString();
      final messageInput = Message(id, content, false, SenderType.user);

      emit(state.copyWith(
          messages: List<Message>.from(state.messages)..add(messageInput)));
      await _chatRepo.sendMessage(messageInput);

      emit(state.copyWith(
        messages: state.messages.updateDeliverById(id, true),
      ));
    } catch (e) {
      //TODO error handling
    }
  }
}

extension MessagesHelper on List<Message> {
  List<Message> updateDeliverById(String id, bool isDelivered) {
    final index = indexWhere((element) => element.id == id);
    this[index].isDelivered = isDelivered;

    return List.from(this);
  }
}
