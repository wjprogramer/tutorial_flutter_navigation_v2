import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/screens/simple_screen.dart';

import 'my_route_config.dart';

class MyRouterDelegate extends RouterDelegate<MyRouteConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRouteConfig> {

  final GlobalKey<NavigatorState> _navigatorKey;

  MyRouteConfig _currentConfiguration;

  MyRouterDelegate({
    MyRouteConfig myRouteConfig,
  }): _currentConfiguration = myRouteConfig,
        _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  MyRouteConfig get currentConfiguration => _currentConfiguration;

  @override
  Widget build(BuildContext context) {
    bool onPopPage(Route<dynamic> route, result) {
      return route.didPop(result);
    }

    return Navigator(
      key: _navigatorKey,
      pages: _buildPages(),
      onPopPage: onPopPage,
    );
  }

  List<Page<dynamic>> _buildPages() {
    final List<Page<dynamic>> pages = [
      MaterialPage(
          key: ValueKey('Home'),
          name: 'Home',
          child: SimpleScreen(text: 'Home')
      ),
    ];

    if (_currentConfiguration == MyRouteConfig.contact())
      pages.add(MaterialPage(
          key: ValueKey('Contact'),
          name: 'Contact',
          child: SimpleScreen(text: 'Contact')
      ));

    if (_currentConfiguration == MyRouteConfig.about())
      pages.add(MaterialPage(
          key: ValueKey('About'),
          name: 'About',
          child: SimpleScreen(text: 'About')
      ));

    if (_currentConfiguration == MyRouteConfig.unknown())
      pages.add(MaterialPage(
          key: ValueKey('Unknown'),
          name: 'Unknown',
          child: SimpleScreen(text: 'Unknown')
      ));

    return pages;
  }

  @override
  Future<void> setNewRoutePath(MyRouteConfig newMyRouteConfig) async {
    _currentConfiguration = newMyRouteConfig;
    return;
  }

  void goHome() {
    _currentConfiguration = MyRouteConfig.home();
    notifyListeners();
  }

  void goAbout() {
    _currentConfiguration = MyRouteConfig.about();
    notifyListeners();
  }

  void goContact() {
    _currentConfiguration = MyRouteConfig.contact();
    notifyListeners();
  }

}