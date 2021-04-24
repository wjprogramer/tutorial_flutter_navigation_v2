import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/layout/base_side_bar.dart';
import 'package:tutorial_flutter_navigation_v2/screens/simple_screen.dart';
import "package:universal_html/html.dart" as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class BaseLayout extends StatefulWidget {
  @override
  _BaseLayoutState createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          BaseSideBar(),
          Expanded(
            child: SimpleScreen(text: 'Home')
          ),
        ],
      ),
    );
  }
}
