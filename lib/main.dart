import 'package:flutter/material.dart';
import 'dart:math';
part 'Mozg.dart';
part 'BodyWid.dart';
part 'MyWidget.dart';
part 'NewsBoxFavourit.dart';
part 'SecondScreen.dart';
part 'Popper.dart';


void main()
{
  Mozg mozg = new Mozg();
  runApp(MyApp(mozg));
}

class MyApp extends StatelessWidget
{
  Mozg mozg;
  MyApp(this.mozg){}
  Widget build(BuildContext cont)
  {
    return MaterialApp
    (
      initialRoute: '/',
      routes:
      {
        '/': (BuildContext c) => BodyWid(mozg),
        //    '/sec': (BuildContext c) => SecondScreen(),
      }
      
    ); 
  }
}
