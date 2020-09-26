import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble(this.message, this.isMe, {this.key});

  final Key key;
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[300] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(11),
              topRight: Radius.circular(11),
              bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(11),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(11),
            ),
          ),
          width: 160,
          padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "/*username*/",
                style: TextStyle(
                  color: isMe ? Colors.black : Colors.black87,
                  //Theme.of(context).accentTextTheme.headline6.color,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: isMe
                      ? Colors.black
                      : Theme.of(context).accentTextTheme.headline6.color,
                ),
                textAlign: isMe ? TextAlign.end : TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//messsage bubble works
