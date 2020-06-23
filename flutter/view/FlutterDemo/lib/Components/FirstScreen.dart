import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton(
          child: Text('Go to pro page'),
          onPressed: () {
            print('This is first page');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => SecondScreen()));
            Navigator.pop(context);
          }),),);
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('${this} hashCode=$hashCode');
    return Scaffold(appBar: AppBar(title: Text('Second page'),),
      body: Center(child: RaisedButton(
          child: Text('Go back'),
          onPressed: () {
            print('This is 2nd page');
            Navigator.pop(context);
          }),),);
  }
}

