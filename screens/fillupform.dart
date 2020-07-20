import 'package:flutter/material.dart';

class fillupform extends StatefulWidget {
  @override
  fillupstate createState() => fillupstate();
}
class userdata{
  String username="";
  String Nickname="";
}
createdata(username){
  print(username);
}
class fillupstate extends State<fillupform> {
  final _formKey = GlobalKey<FormState>();
  userdata data= new userdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
          child:Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: (value){
                    if(value.isEmpty){
                      return 'please enter some text';
                    }
                  },
                  onSaved: (value){
                    data.username=value;
                  },
                ),
                RaisedButton(
                  onPressed: (){
                    if (_formKey.currentState.validate()) {
                     _formKey.currentState.save();
                     createdata(data.username);
                    }
                  },
                  child: Text('continue'),
                )
              ],
            ),
          )
      )
    );
  }
}