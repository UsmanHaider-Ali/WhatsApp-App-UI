import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/colors.dart';
import 'package:whatsapp_ui_app/widgets/chat_list.dart';
import 'package:whatsapp_ui_app/widgets/web_chat_appbar.dart';

import '../widgets/contact_list.dart';
import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: dividerColor),
              ),
              image: DecorationImage(
                image: AssetImage(''),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const Expanded(
                  child: ChatList(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: searchBarColor,
                            hintText: 'Type a message',
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
