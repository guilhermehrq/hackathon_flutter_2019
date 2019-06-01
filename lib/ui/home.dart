import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark
    ));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [
              Color.fromRGBO(0, 87, 155, 1),
              Color.fromRGBO(86, 196, 245, 1),
            ],
          )
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 300,

              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('AppBar', style: TextStyle(color: Colors.white),),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => ListTile(title: Text('Texto'),)),
            )
          ],
        ),
      ),
    );
  }
}
