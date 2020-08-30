import 'package:abarrotify/src/pages/auth/register_page.dart';
import 'package:abarrotify/src/services/authentication.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();

  @override
  void setState(_) {
    super.setState(_);
    emailNode.requestFocus();
  }

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
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              focusNode: emailNode,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Ingrese su correo...',
              ),
              onSubmitted: (String value) => passwordNode.requestFocus(),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              focusNode: passwordNode,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Contraseña...',
              ),
              onSubmitted: (String value) {
                passwordNode.unfocus();
                _signIn();
              },
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
                child: const Text('Iniciar sesión'),
                onPressed: () {
                  print(emailController.text);
                  print(passwordController.text);
                  _signIn();
                },
              )),
          FlatButton(
            onPressed: () {
              //forgot password screen
            },
            textColor: Colors.blue,
            child: const Text('Olvidó su contraseña?'),
          ),
          Container(
            child: Row(
              children: <Widget>[
                const Text('No tiene cuenta?'),
                FlatButton(
                  textColor: Colors.blue,
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.of(context).pushNamed(RegisterPage.id);
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )
        ],
      ),
    );
  }

  void _signIn() {
    Auth().signIn(emailController.text, passwordController.text, context);
  }
}
