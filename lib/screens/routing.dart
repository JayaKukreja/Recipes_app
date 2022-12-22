
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recipe_app/screens/loginScreen.dart';
import 'package:recipe_app/screens/mainPage.dart';

class RouteGenerator {
  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case '/mainPage':
        return PageTransition(
            child: const MainPage(), type: PageTransitionType.bottomToTop);
      default:
        return errorRoute();
    }
  }
}

Route errorRoute() {
  return MaterialPageRoute(builder: (context) {
    return Scaffold(
      appBar: AppBar(title: Text("error")),
      body: Center(
        child: Text("Error"),
      ),
    );
  });
}
