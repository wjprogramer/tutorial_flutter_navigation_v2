import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/screens/simple_screen.dart';

import 'my_route_config.dart';

class MyRouterDelegate extends RouterDelegate<MyRouteConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRouteConfig> {

  final GlobalKey<NavigatorState> _navigatorKey;

  MyRouteConfig _currentConfiguration;

  MyRouterDelegate(): _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  MyRouteConfig get currentConfiguration => _currentConfiguration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
    );
  }

  @override
  Future<void> setNewRoutePath(MyRouteConfig newMyRouteConfig) async {
    _currentConfiguration = newMyRouteConfig;
    return;
  }

}