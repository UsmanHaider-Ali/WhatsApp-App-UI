import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/user_info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    users[0]['profilePic'].toString(),
                  ),
                  radius: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Elon Musk',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
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
          ),
        ],
      ),
    );
  }
}
