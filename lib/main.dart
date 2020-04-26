import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:designs/pages/basic_page.dart';
import 'package:designs/pages/buttons_page.dart';
import 'package:designs/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
    ));


    if ( Platform.isAndroid ) {
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
      ));
    } else if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
      )); 
    }
    

    return MaterialApp(
      title: 'Designs',
      debugShowCheckedModeBanner: false,

      initialRoute: 'buttons',
      routes: {
        'basic'     : (BuildContext context) => BasicPage(),
        'scroll'    : (BuildContext context) => ScrollPage(),
        'buttons'   : (BuildContext context) => ButtonsPage(),
      },
    );
  }
}