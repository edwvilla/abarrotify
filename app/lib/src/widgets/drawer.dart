import 'package:abarrotify/src/pages/seller/become_seller.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[50],
            ),
            accountName: Text(
              "Edwin Villa",
              style: TextStyle(color: Colors.grey[850], fontSize: 16),
            ),
            accountEmail: Text(
              "villaceniceros@gmail.com",
              style: TextStyle(color: Colors.grey[850], fontSize: 16),
            ),
          ),
          Ink(
            color: Colors.greenAccent[700],
            child: ListTile(
              title: Text(
                "Registrarme como Vendedor",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(BecomeSeller.id);
              },
            ),
          ),
          ListTile(
            title: Text("Historial de compras"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Formas de pago"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Legales"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
