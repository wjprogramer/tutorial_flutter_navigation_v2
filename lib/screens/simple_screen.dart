import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/navigation/my_router_delegate.dart';

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
          if (text.toLowerCase() != 'about')
            TextButton(
              onPressed: () {
                final delegate = Router.of(context).routerDelegate as MyRouterDelegate;
                delegate.goAbout();
              },
              child: Text('About us >'),
            ),
        ],
      ),
    );
  }
}
