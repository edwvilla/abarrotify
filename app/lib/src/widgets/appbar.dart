import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key key, this.icon, this.onTap, this.appBar})
      : super(key: key);

  final AppBar appBar;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(icon),
          onPressed: onTap,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
