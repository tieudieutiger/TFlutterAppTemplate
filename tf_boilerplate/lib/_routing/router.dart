import 'package:flutter/material.dart';
import 'routes.dart';
import '../views/splash/splash.dart';
import '../views/app_home/app_home.dart';
import '../views/product_detail/details.dart';
import '../views/app_home/my_cart/my_cart.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen(title: 'Consumer Home Page'));
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => AppHomePage());
    case detailsViewRoute:
      return MaterialPageRoute(
        builder: (context) => ProductDetailsPage(fruit: settings.arguments),
      );
    case cartViewRoute:
      return MaterialPageRoute(builder: (context) => CartScreen());
    default:
      return MaterialPageRoute(builder: (context) => SplashScreen(title: 'Consumer Home Page'));
  }
}
