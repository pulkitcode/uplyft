import 'package:flutter/material.dart';
import 'package:project_iris/Screens/Chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: ( ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFb5b3fd),
      )
        
        
        /*ThemeData.dark(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Colors.blueGrey,
          accentColor: Colors.blueGrey,
          accentColorBrightness: Brightness.dark,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: Colors.blueGrey,
            textTheme: ButtonTextTheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          ),*/
      ),
      home: ChatScreen(),
    );
  }
}
//final working commit
