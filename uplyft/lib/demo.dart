import 'package:flutter/material.dart';

import 'content_card.dart';
import 'gooey_carousel.dart';

class GooeyEdgeDemo extends StatefulWidget {
  GooeyEdgeDemo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GooeyEdgeDemoState createState() => _GooeyEdgeDemoState();
}

class _GooeyEdgeDemoState extends State<GooeyEdgeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
        children: <Widget>[
          ContentCard(
            color: 'Red',
            altColor: Color(0xFF4259B2),
            title: "Life is beautiful",
            subtitle:
                'Don\'t hesitate to ask for help when needed',
          ),
          ContentCard(
            color: 'Yellow',
            altColor: Color(0xFF4259B2),
            title: "Talk to someone who cares",
            subtitle: 'A certified professional who can understand what you\'re going through.',
          ),
          ContentCard(
            color: 'Blue',
            altColor: Color(0xFF4259B2),
            title: "Just one text away",
            subtitle:
                'You have the option to text anonymously' ,
          ),
        ],
      ),
    );
  }
}
