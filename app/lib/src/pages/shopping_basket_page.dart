import 'package:abarrotify/src/models/product_model.dart';
import 'package:abarrotify/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  static String id = 'shopping_cart_page';
  final Product mockProduct = Product(
    name: 'Manzanas',
    price: 20.80,
    unit: 'Por kilo',
    image:
        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ExpandedProductCard(mockProduct);
        },
      ),
    );
  }
}

class ExpandedProductCard extends StatelessWidget {
  const ExpandedProductCard(this.product);
  final Product product;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 6,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: <Widget>[
            Image.network(
              product.image,
              fit: BoxFit.contain,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(product.name),
                  const Spacer(),
                  Text('\$ ${product.price}'),
                  Text(product.unit),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
