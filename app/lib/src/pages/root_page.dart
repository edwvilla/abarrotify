import 'package:abarrotify/src/services/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth/login_page.dart';
import 'list_page.dart';
import 'list_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key key}) : super(key: key);

  static String id = '/';

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  User user = Auth().getCurrentUser();

  @override
  void initState() {
    super.initState();
    // user == null
    //     ? Navigator.pushNamedAndRemoveUntil(context, LoginPage.id, (_) => false)
    //     : Navigator.pushNamedAndRemoveUntil(context, ListPage.id, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return user == null ? LoginPage() : ListPage();
  }
}
