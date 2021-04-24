import 'package:flutter/material.dart';
import 'package:tutorial_flutter_navigation_v2/navigation/my_route_config.dart';

class RouteUtility {

  RouteUtility._();

  static MyRouteConfig getRouteConfig(RouteInformation routeInformation) {
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

}