import 'package:flutter/material.dart';

class SimpleScreen extends StatelessWidget {
  final String text;

  SimpleScreen({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          if (text.toLowerCase() != 'contact')
            TextButton(
              onPressed: () {

              },
              child: Text('About us >'),
            ),
        ],
      ),
    );
  }
}
