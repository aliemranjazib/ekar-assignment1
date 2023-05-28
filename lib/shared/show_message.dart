import 'package:flutter/material.dart';

showMessages(
  BuildContext context,
  String title,
  String body,
) {
  return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("CANCEL"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("PROCEED"),
            )
          ],
        );
      });
}
