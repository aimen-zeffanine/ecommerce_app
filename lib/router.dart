import 'package:ecommerce_app/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(builder: (context) => AuthScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(
        body: Center(
          child: Text('404 Not Found!'),
        ),
      ));
  }
}