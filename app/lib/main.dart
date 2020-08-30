import 'package:abarrotify/src/pages/map_page.dart';
import 'package:abarrotify/src/pages/seller/become_seller.dart';
import 'package:abarrotify/src/pages/seller/create_product.dart';
import 'package:abarrotify/src/pages/shopping_basket_page.dart';
import 'package:flutter/material.dart';
import 'src/const.dart';
import 'src/pages/auth/login_page.dart';
import 'src/pages/auth/register_page.dart';
import 'src/pages/list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      title: 'Material App',
      initialRoute: MapPage.id,
      routes: <String, Widget Function(BuildContext)>{
        ListPage.id: (BuildContext context) => ListPage(),
        MapPage.id: (BuildContext context) => MapPage(),
        ShoppingCart.id: (BuildContext context) => ShoppingCart(),
        BecomeSeller.id: (BuildContext context) => BecomeSeller(),
        CreateProductPage.id: (BuildContext context) => CreateProductPage(),
        LoginPage.id: (BuildContext context) => LoginPage(),
        RegisterPage.id: (BuildContext context) => RegisterPage(),
      },
    );
  }
}
