import 'package:flutter/material.dart';

void showCallDialog(
    {required BuildContext context, required VoidCallback onPressed}) {
  showDialog(
    context: context,
    //doesn't allow the dialog to be dismissed when it's pressed outside
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Calls Not Available'),
      actions: [
        TextButton(
          onPressed: onPressed,
          child: const Text('Done'),
        ),
      ],
    ),
  );
}
