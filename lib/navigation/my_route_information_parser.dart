import 'package:flutter/material.dart';

import 'my_route_config.dart';

class MyRouteInformationParser extends RouteInformationParser<MyRouteConfig> {
  @override
  Future<MyRouteConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location);
    final pathSegments = uri.pathSegments;
    final pathSegmentsCount = pathSegments.length;

    // Handle `/`
    if (pathSegmentsCount == 0) {
      return MyRouteConfig.home();
    }

    // Handle `/xxx`
    if (pathSegmentsCount == 1) {
      if (pathSegments[0] == MyRouteConfig.about().uri.pathSegments[0]) {
        return MyRouteConfig.about();
      }

      if (pathSegments[0] == MyRouteConfig.contact().uri.pathSegments[0]) {
        return MyRouteConfig.contact();
      }

      if (pathSegments[0] == MyRouteConfig.unknown().uri.pathSegments[0]) {
        return MyRouteConfig.unknown();
      }
    }

    return MyRouteConfig.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(MyRouteConfig routeConfig) {
    return RouteInformation(location: routeConfig.uri.path);
  }

}