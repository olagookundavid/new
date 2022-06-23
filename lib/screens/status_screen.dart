import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/screens/show_status_screen.dart';
import '../info.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                title: const Text('My status', style: TextStyle(fontSize: 15)),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    'Today, 12 AM',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpg'),
                  radius: 30,
                ),
                trailing: const Icon(Icons.more_horiz_rounded),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ShowStatusScreen2(),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Recent Updates',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const ShowStatusScreen()),
                          );
                        },
                        child: ListTile(
                          title: Text(info[index]['name'].toString(),
                              style: const TextStyle(fontSize: 15)),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              'Today  ' + info[index]['time'].toString(),
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.grey),
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString(),
                            ),
                            radius: 30,
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
          ],
        ),
      ),
      Positioned(
        child: FloatingActionButton(
          backgroundColor: Colors.grey[300],
          onPressed: () {},
          child: const Icon(
            Icons.edit,
            color: Colors.black54,
          ),
          mini: true,
        ),
        bottom: 80,
        right: 20,
      ),
      Positioned(
        child: FloatingActionButton(
          backgroundColor: floatingActionButtonColor,
          onPressed: () {},
          child: const Icon(
            Icons.camera_alt,
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
