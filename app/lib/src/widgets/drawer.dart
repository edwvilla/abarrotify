import 'package:abarrotify/src/pages/list_page.dart';
import 'package:abarrotify/src/pages/map_page.dart';
import 'package:abarrotify/src/pages/seller/become_seller.dart';
import 'package:abarrotify/src/pages/shopping_basket_page.dart';
import 'package:abarrotify/src/services/authentication.dart';
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
              'Edwin Villa',
              style: TextStyle(color: Colors.grey[850], fontSize: 16),
            ),
            accountEmail: Text(
              Auth().getCurrentUser().email ?? '',
              style: TextStyle(color: Colors.grey[850], fontSize: 16),
            ),
          ),
          Ink(
            color: Colors.greenAccent[700],
            child: ListTile(
              title: const Text(
                'Registrarme como Vendedor',
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
            title: const Text('Productos'),
            trailing: const Icon(Icons.fastfood),
            onTap: () {
              Navigator.pushNamed(context, ListPage.id);
            },
          ),
          ListTile(
            title: const Text('Abarrotes cerca'),
            trailing: const Icon(Icons.room),
            onTap: () {
              Navigator.pushNamed(context, MapPage.id);
            },
          ),
          ListTile(
            title: const Text('Carrito de compras'),
            trailing: const Icon(Icons.shopping_basket),
            onTap: () {
              Navigator.pushNamed(context, ShoppingCart.id);
            },
          ),
          ListTile(
            title: const Text('Historial de compras'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Formas de pago'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Legales'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {
              Auth().signOut(context);
            },
          ),
        ],
      ),
    );
  }
}
