import 'package:flutter/material.dart';
import 'package:harpi/views/home.view.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Homeview.routeName:
        return MaterialPageRoute(builder: (_) => Homeview(key: UniqueKey()));

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }

  void dispose() {}
}
