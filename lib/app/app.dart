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
      onGenerateRoute: (_) {
        return PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 0),
            reverseTransitionDuration: const Duration(milliseconds: 0),
            pageBuilder: (__, ___, ____) => BaseLayout()
        );
      }
    );
  }
}
