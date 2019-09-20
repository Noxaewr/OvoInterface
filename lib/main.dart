import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:testsample/AnimationMenu.dart';
//import 'PushNotification.dart';

void main() async {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override  
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationMenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}