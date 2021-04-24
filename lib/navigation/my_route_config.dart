import 'package:equatable/equatable.dart';

class MyRouteConfig extends Equatable {
  final Uri uri;

  MyRouteConfig._(String path): uri = Uri(path: path);

  MyRouteConfig.home(): this._('/');
  MyRouteConfig.about(): this._('/about');
  MyRouteConfig.contact(): this._('/contact');
  MyRouteConfig.unknown(): this._('/unknown');

  @override
  List<Object> get props => [ uri.path ];
}