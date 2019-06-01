import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = 'login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          // child: Image.asset('assets/logo.png'),
        ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'teste@teste.com',
      decoration: InputDecoration(
        hintText: 'Email',
      ),
    );

    final password = TextFormField(
        autofocus: false,
        obscureText: true,
        initialValue: '1234',
        decoration: InputDecoration(
          hintText: 'Senha',
    ));

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          // Navigator.of(context).pushNamed(HomePage.tag);
        },
        child: Text('Log In', style: TextStyle(color: Colors.lightBlueAccent)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Esqueceu a senha?',
        style: TextStyle(color: Colors.lightBlueAccent),
      ),
      onPressed: () {},
    );

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(0, 87, 155, 1),
              Color.fromRGBO(86, 196, 245, 1),
            ],
          )),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 48.0),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 24.0),
                loginButton,
                forgotLabel
              ],
            ),
          )),
    );
  }
}
