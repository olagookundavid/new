import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import '../info.dart';
import '../utils/dialog.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
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
                    showCallDialog(
                        context: context,
                        onPressed: () {
                          Navigator.pop(context);
                        });
                  },
                  child: ListTile(
                    title: Text(info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 15)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            size: 15,
                            color: Colors.green[300],
                          ),
                          Text(
                            'Today  ' + info[index]['time'].toString(),
                            style: const TextStyle(
                                fontSize: 13, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: Colors.lightGreenAccent[100],
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
      ),
      Positioned(
        child: FloatingActionButton(
          backgroundColor: floatingActionButtonColor,
          onPressed: () {},
          child: const Icon(
            Icons.add_ic_call_rounded,
            color: Colors.grey,
          ),
          mini: true,
        ),
        bottom: 30,
        right: 20,
      )
    ]);
  }
}
