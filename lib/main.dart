
import 'package:exe2_pm/splashScreen.dart';
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreen(),
    );
  }

}
