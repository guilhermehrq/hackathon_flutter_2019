import 'dart:io';
import 'package:flutter/material.dart';

class InfoCardChallenge extends StatefulWidget {
  int _index;
  String _title;
  String _description;

  InfoCardChallenge(int index, String title, String description) {
    this._index = index;
    this._title = title;
    this._description = description;
  }

  @override
  _InfoCardChallengeState createState() => _InfoCardChallengeState(_index, _title, _description);
}

class _InfoCardChallengeState extends State<InfoCardChallenge> {
  int _index;
  String _title;
  String _description;

  _InfoCardChallengeState(int index, String title, String description) {
    this._index = index;
    this._title = title;
    this._description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ut sem sit amet nibh dignissim tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer tincidunt vel ligula semper lobortis. Suspendisse a eleifend velit.\n\n Donec orci magna, tempus id tempus eget, ultrices vitae dolor. Quisque tortor nulla, dapibus a nisl in, vulputate euismod tellus. Quisque ut dolor ornare, imperdiet erat vitae, auctor quam. Curabitur placerat quam eros, sed vehicula justo maximus non. Aliquam quis libero at augue tincidunt molestie. Suspendisse dignissim laoreet quam. Proin laoreet pellentesque felis, ac bibendum ante ultrices id. Duis pharetra laoreet est, sit amet auctor nisl dapibus sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pharetra, lacus ut iaculis pellentesque, neque libero pellentesque risus, in commodo est neque eget dui. Praesent in mi nibh";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
        Navigator.pop(context);
      }, color: Color.fromRGBO(0, 87, 155, 1),),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                _title,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Text(
              _description,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            Divider(),
            Text(
              'Comentários',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
