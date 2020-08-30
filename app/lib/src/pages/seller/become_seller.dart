import 'package:flutter/material.dart';

class BecomeSeller extends StatefulWidget {
  static String id = 'become_seller_page';

  @override
  _BecomeSellerState createState() => _BecomeSellerState();
}

class _BecomeSellerState extends State<BecomeSeller> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Ingrese su correo...',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Contraseña...',
              ),
            ),
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
                  print(emailController.text);
                  print(passwordController.text);
                },
              )),
        ],
      ),
    );
  }
}
