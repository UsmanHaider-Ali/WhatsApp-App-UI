import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/colors.dart';

import '../screens/mobile_chat_screen.dart';
import '../user_info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  if (MediaQuery.of(context).size.width < 950) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MobileChatScreen(
                          userName: users[index]['name'].toString(),
                          userImage: users[index]['profilePic'].toString(),
                        ),
                      ),
                    );
                  }
                },
                child: ListTile(
                  title: Text(
                    maxLines: 1,
                    users[index]['name'].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      users[index]['message'].toString(),
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      users[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                  trailing: Text(
                    users[index]['time'].toString(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 0,
              ),
            ],
          );
        },
      ),
    );
  }
}
