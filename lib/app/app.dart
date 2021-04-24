import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/layout/base_layout.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseLayout(),
    );
  }
}
