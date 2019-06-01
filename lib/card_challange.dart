import 'package:flutter/material.dart';

class CardChallenge extends StatefulWidget {


  @override
  _CardChallengeState createState() => _CardChallengeState();
}

class _CardChallengeState extends State<CardChallenge> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 4.0),
                            child: Text('#1', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.green),),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 4.0),
                            child: Text('How are you?', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4.0),
                        child: Text('dsd sds s s ds dsds  sds ss sdsd sdsdsdsdsds?', style: TextStyle(fontSize: 16.0,),),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
