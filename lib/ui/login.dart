import 'package:flutter/material.dart';
import 'package:hackathon_flutter_2019/ui/home.dart';

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
//           child: Image.asset('assets/logo.png'),
        ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'teste@teste.com',
      style: TextStyle(
        color: Colors.white
      ),
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
      ),
    );

    final password = TextFormField(
        autofocus: false,
        obscureText: true,
        initialValue: '1234',
        style: TextStyle(
            color: Colors.white
        ),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
          hintText: 'Senha',
          hintStyle: TextStyle(color: Colors.white),
        ));

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        child: Text('Log In', style: TextStyle(color: Colors.lightBlueAccent)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot your password?',
        style: TextStyle(color: Colors.white),
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
          )
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
//              logo,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Let\'s ', style: TextStyle(color: Colors.white, fontSize: 24),),
                  Text('Flutterin', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),)
                ],
              ),
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
