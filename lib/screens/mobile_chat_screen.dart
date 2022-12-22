import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/colors.dart';
import 'package:whatsapp_ui_app/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final String userName;
  final String userImage;

  const MobileChatScreen(
      {Key? key, required this.userName, required this.userImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        // leading: Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: CircleAvatar(
        //     backgroundImage: NetworkImage(
        //       // users[0]['profilePic'].toString(),
        //       userImage,
        //     ),
        //   ),
        // ),
        title: Text(
          // users[0]['name'].toString(),
          userName,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(children: [
        const Expanded(
          child: ChatList(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: searchBarColor,
              hintText: 'Type a message',
              prefixIcon: const Icon(
                Icons.emoji_emotions,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                Icons.mic,
                color: Colors.grey,
              ),
              contentPadding: const EdgeInsets.only(
                left: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
