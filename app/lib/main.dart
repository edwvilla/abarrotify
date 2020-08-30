import 'package:abarrotify/src/pages/seller/become_seller.dart';
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
      initialRoute: ListPage.id,
      routes: <String, Widget Function(BuildContext)>{
        ListPage.id: (BuildContext context) => ListPage(),
        LoginPage.id: (BuildContext context) => LoginPage(),
        RegisterPage.id: (BuildContext context) => RegisterPage(),
        BecomeSeller.id: (BuildContext context) => BecomeSeller(),
      },
    );
  }
}
