import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  ProductCard(this.product);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.image,
              ),
            ),
            SizedBox(height: 5),
            Text(
              product.name,
              style: TextStyle(color: Colors.grey[850]),
            ),
            Divider(),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$ ${product.price}',
                      style: TextStyle(color: Colors.grey[850]),
                    ),
                    Text('${product.unit}')
                  ],
                ),
                Spacer(),
                RaisedButton(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.greenAccent[700],
                  onPressed: () {
                    //TODO Add basket functionality on card
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
