import 'dart:async';
import 'package:flutter/material.dart';

class ShowStatusScreen extends StatelessWidget {
  const ShowStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () => Navigator.pop(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: const Center(
          child: Text(
            '''
      Chelsea 
      is
      the
      best
      club
      in the
      world...
      ''',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                fontStyle: FontStyle.italic),
          ),
        ),
        decoration: const BoxDecoration(color: Colors.blue),
      ),
    );
  }
}

class ShowStatusScreen2 extends StatelessWidget {
  const ShowStatusScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () => Navigator.pop(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Status'),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/me.jpg'),
          ),
        ),
      ),
    );
  }
}
