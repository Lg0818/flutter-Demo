import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    title: 'navigate demo',
    home: new DialogButton(),));
}

class DialogButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('First page'),),
      body:new MaterialButton(
    color: Colors.blue,
    child: new Text('点我'),
    onPressed: () {
        showDialog<Null>(
            context: context,
            barrierDismissible: false,
            builder: (context) {
                return new AlertDialog(
                    title: new Text('标题'),
                    content: new SingleChildScrollView(
                        child: new ListBody(
                            children: <Widget>[
                                new Text('内容 1'),
                                new Text('内容 2'),
                            ],
                        ),
                    ),
                    actions: <Widget>[
                        new FlatButton(
                            child: new Text('确定'),
                            onPressed: () {
                                Navigator.of(context).pop();
                            },
                        ),
                    ],
                );
            },
        ).then(print);
    },
), );
  }
}

