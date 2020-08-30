import 'package:abarrotify/src/pages/seller/create_product.dart';
import 'package:abarrotify/src/widgets/appbar.dart';
import 'package:flutter/material.dart';

class BecomeSeller extends StatefulWidget {
  static String id = 'become_seller_page';

  @override
  _BecomeSellerState createState() => _BecomeSellerState();
}

class _BecomeSellerState extends State<BecomeSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(width: double.infinity),
          const Icon(
            Icons.shopping_basket_outlined,
            color: Colors.green,
            size: 80,
          ),
          const SizedBox(height: 30),
          const Text(
            'Conviertete en Vendedor desde casa',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textColor: Colors.white,
                color: Colors.greenAccent[700],
                child: const Text('Registrarse como vendedor'),
                onPressed: () {
                  //TODO Add auth functionality
                },
              )),
          const SizedBox(height: 20),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textColor: Colors.white,
                color: Colors.greenAccent[700],
                child: const Text('Registrar producto'),
                onPressed: () {
                  Navigator.pushNamed(context, CreateProductPage.id);
                },
              )),
        ],
      ),
    );
  }
}
