import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos/src/bloc/chat/chat_cubit.dart';
import 'package:oranos/src/bloc/chat/chat_state.dart';
import 'package:oranos/src/routes.dart';
import 'package:oranos/src/screens/chat/widgets/chat_list.dart';

import 'widgets/chat_box.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _controller = ScrollController();
  @override
  void didChangeDependencies() {
    context.read<ChatCubit>().init();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) => state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ChatList(
                    messages: state.messages,
                    controller: _controller,
                  ),
                ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: ChatBox(
          onSend: (message) {
            context.read<ChatCubit>().sendMessage(message);
            _controller.jumpTo(_controller.position.maxScrollExtent);
            if (message == "done") {
              Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.home,
                (route) => false,
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
