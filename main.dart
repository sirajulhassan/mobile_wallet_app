import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/initial.dart';
import 'package:mobile_wallet_app/screens/fillupform.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => InitialLoading(),
      '/fillupform':(context) => fillupform(),
//      '/login' :(context) => Register(),
//      '/home' : (context) => HomeScreen(),
    },
  ));
}