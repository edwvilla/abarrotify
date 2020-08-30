import 'package:abarrotify/src/widgets/drawer.dart';

import '../models/product_model.dart';
import '../widgets/product_card.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  static String id = 'list_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket_outlined),
            //TODO Add basket functionality
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _searchInput(context),
          ),
          _tabMenu(),
          ProductListing(),
        ],
      ),
    );
  }

  Widget _tabMenu() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // TODO Add builder
          TabItem(title: 'Todo', color: Colors.green),
          TabItem(title: 'Frutas'),
          TabItem(title: 'Verduras'),
          TabItem(title: 'Botanas'),
          TabItem(title: 'Bebidas'),
          TabItem(title: 'Limpieza'),
          TabItem(title: 'Hogar'),
        ],
      ),
    );
  }

  Widget _searchInput(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search),
        labelText: 'Buscar...',
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({Key key, this.title, this.color}) : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey[850],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 5,
          //TODO too funky
          width: size.width / 35 * title.length,
          color: color,
        ),
        SizedBox(height: 5),
      ],
    );
  }
}

class ProductListing extends StatelessWidget {
  final Product mockProduct = Product(
    name: 'Manzanas',
    price: 20.80,
    unit: 'Por kilo',
    image:
        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
  );
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .88,
      ),
      itemBuilder: (context, i) {
        return ProductCard(mockProduct);
      },
    );
  }
}
