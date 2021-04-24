import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/layout/base_side_bar.dart';
import 'package:tutorial_flutter_navigation_v2/navigation/my_route_information_parser.dart';
import 'package:tutorial_flutter_navigation_v2/navigation/my_router_delegate.dart';
import 'package:tutorial_flutter_navigation_v2/screens/simple_screen.dart';
import "package:universal_html/html.dart" as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class BaseLayout extends StatefulWidget {
  @override
  _BaseLayoutState createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {

  PlatformRouteInformationProvider _routeInformationProvider;

  MyRouterDelegate _routerDelegate;
  MyRouteInformationParser _routeInformationParser = MyRouteInformationParser();

  @override
  void initState() {
    super.initState();

    _routeInformationProvider = PlatformRouteInformationProvider(
        initialRouteInformation: RouteInformation(
          location: '/',
        )
    );

    _routerDelegate = MyRouterDelegate();
  }

  @override
  void dispose() {
    _routeInformationProvider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          BaseSideBar(
            myRouterDelegate: _routerDelegate,
          ),
          Expanded(
            child: Router(
              routerDelegate: _routerDelegate,
              routeInformationParser: _routeInformationParser,
              routeInformationProvider: _routeInformationProvider,
            )
          ),
        ],
      ),
    );
  }
}
