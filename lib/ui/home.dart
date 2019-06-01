import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_flutter_2019/ui/card_challange.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(0, 87, 155, 1)
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
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'João Vitor Rodrigues',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Desafios concluídos: 10',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      child: Text('J'),
                    ),
                  )
                  ,
                ],
              ),
            ),
            CardChallenge(1, 'Nubank APP', 'Make a Nubank APP'),
            CardChallenge(2, 'To Do List', 'Make a To Do List'),
            CardChallenge(3, 'Redesign Gmail', 'Make a new design to Gmail'),
            CardChallenge(4, 'Nubank APP', 'Make a Nubank APP'),
            CardChallenge(5, 'To Do List', 'Make a To Do List'),
            CardChallenge(6, 'Redesign Gmail', 'Make a new design to Gmail'),
            CardChallenge(7, 'Nubank APP', 'Make a Nubank APP'),
            CardChallenge(8, 'To Do List', 'Make a To Do List'),
            CardChallenge(9, 'Redesign Gmail', 'Make a new design to Gmail'),
            CardChallenge(10, 'Nubank APP', 'Make a Nubank APP'),
            CardChallenge(11, 'To Do List', 'Make a To Do List'),
            CardChallenge(12, 'Redesign Gmail', 'Make a new design to Gmail'),
            CardChallenge(13, 'Nubank APP', 'Make a Nubank APP'),
            CardChallenge(14, 'To Do List', 'Make a To Do List'),
            CardChallenge(15, 'Redesign Gmail', 'Make a new design to Gmail'),
          ],
        ),
      ),
    );
  }
}
