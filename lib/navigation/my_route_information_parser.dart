import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/utilities/route_utility.dart';

import 'my_route_config.dart';

class MyRouteInformationParser extends RouteInformationParser<MyRouteConfig> {
  @override
  Future<MyRouteConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    return RouteUtility.getRouteConfig(routeInformation);
  }

  @override
  RouteInformation restoreRouteInformation(MyRouteConfig routeConfig) {
    return RouteInformation(location: routeConfig.uri.path);
  }
}