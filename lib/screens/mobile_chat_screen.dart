import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import '../widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(text),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.grey)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      fillColor: searchBarColor,
                      filled: true,
                      hintText: 'Send a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none),
                      ),
                      contentPadding: const EdgeInsets.only(left: 20),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.attach_file,
                                    color: Colors.grey)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt,
                                    color: Colors.grey)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.money_rounded,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: messageColor),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
