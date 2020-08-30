import 'package:abarrotify/src/pages/auth/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: double.infinity),
          Icon(
            Icons.shopping_basket_outlined,
            color: Colors.green,
            size: 80,
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Ingrese su correo...',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: 'Contraseña...',
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textColor: Colors.white,
                color: Colors.greenAccent[700],
                child: Text('Iniciar sesión'),
                onPressed: () {
                  //TODO Add auth functionality
                  print(emailController.text);
                  print(passwordController.text);
                },
              )),
          FlatButton(
            onPressed: () {
              //forgot password screen
            },
            textColor: Colors.blue,
            child: Text('Olvidó su contraseña?'),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text('No tiene cuenta?'),
                FlatButton(
                  textColor: Colors.blue,
                  child: Text(
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
}
