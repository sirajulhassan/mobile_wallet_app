import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/initial.dart';
import 'package:mobile_wallet_app/screens/fillupform.dart';
import 'package:mobile_wallet_app/screens/homescreen/homescreen.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => InitialLoading(),
      '/fillupform':(context) => fillupform(),
      '/homescreen':(context) => homescreen(),
//      '/login' :(context) => Register(),
//      '/home' : (context) => HomeScreen(),
    },
  ));
}