import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/colors.dart';

import '../user_info.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.070,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    users[0]['profilePic'].toString(),
                  ),
                  radius: 20,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Elon Musk',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment,
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
            )
          ],
        ),
      ),
    );
  }
}
