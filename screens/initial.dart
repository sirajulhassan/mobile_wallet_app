import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:mobile_wallet_app/backend/initfunctions.dart';
void main() => runApp(MaterialApp(
  home: InitialLoading(),
));



class InitialLoading extends StatefulWidget {
  @override
  _InitialLoadingState createState() => _InitialLoadingState();

}

class _InitialLoadingState extends State<InitialLoading> {


  void _timer() async {
    await new Future.delayed(const Duration(seconds : 5));
    if(initcheck()) {
      Navigator.popAndPushNamed(context, '/homescreen');
    }
    else{
      Navigator.popAndPushNamed(context, '/fillupform');
    }
  }

  @override
  void initState() {
    super.initState();
    _timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[

              Text('launch screen')
            ],
          ),
        )
    );
  }
}