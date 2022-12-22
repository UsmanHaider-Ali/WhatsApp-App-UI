import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/message_info.dart';
import 'package:whatsapp_ui_app/widgets/receiver_message_card.dart';
import 'package:whatsapp_ui_app/widgets/sender_messae_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: ((context, index) {
        if (messages[index]['isMe'] == true) {
          return SenderMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        } else {
          return ReceiverMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
      }),
    );
  }
}
