import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';
import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MobileChatScreen(
                          text: info[index]['name'].toString()),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 15)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                  trailing: Text(
                    info[index]['time'].toString(),
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              )
            ],
          );
        },
      ),
    );
  }
}
