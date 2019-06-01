import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  String initialLetter;
  String comment;
  Color bgColor;

  Comments(String comment, String initialLetter, Color bgColor) {
    this.comment = comment;
    this.initialLetter = initialLetter;
    this.bgColor = bgColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: CircleAvatar(
                backgroundColor: bgColor,
                foregroundColor: Colors.white,
                child: Text(initialLetter)),
            margin: EdgeInsets.only(right: 8.0),
          ),
          Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Text(comment)
                ),
              )
        ],
      ),

    );
  }
}
