import 'package:flutter/material.dart';

class CardChallenge extends StatefulWidget {
  int _index;
  String _title;
  String _description;

  CardChallenge(int index, String title, String description) {
    this._index = index;
    this._title = title;
    this._description = description;
  }

  @override
  _CardChallengeState createState() => _CardChallengeState(_index, _title, _description);
}

class _CardChallengeState extends State<CardChallenge> {
  int _index;
  String _title;
  String _description;

  _CardChallengeState(int index, String title, String description) {
    this._index = index;
    this._title = title;
    this._description = description;
  }

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 4.0),
                            child: Text('#$_index', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.green),),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 4.0),
                            child: Text(_title, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4.0),
                        child: Text(_description, style: TextStyle(fontSize: 16.0,),),
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
