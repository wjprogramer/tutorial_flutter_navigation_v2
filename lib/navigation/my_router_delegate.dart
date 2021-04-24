import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/screens/simple_screen.dart';

import 'my_route_config.dart';

class MyRouterDelegate extends RouterDelegate<MyRouteConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRouteConfig> {

  @override
  GlobalKey<NavigatorState> get navigatorKey => throw UnimplementedError();

  @override
  MyRouteConfig get currentConfiguration => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Future<void> setNewRoutePath(MyRouteConfig newState) async {
    throw UnimplementedError();
  }

}