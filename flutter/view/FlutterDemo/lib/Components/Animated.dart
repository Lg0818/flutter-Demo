
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = true;

  bool valued = true;
  @override
  Widget build(BuildContext context) {
    
        return GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: new Row(
            children: <Widget>[
            new Center(
                  child: AnimatedContainer(
                  color: selected ? Colors.white : Colors.blue,
                  alignment:
                      selected ? Alignment.center : AlignmentDirectional.topCenter,
                  duration: Duration(seconds: 3),
                  curve: Curves.fastOutSlowIn,
                  child: selected ? new Image.asset('topMenuBar/icon_car_default.png',width: 300,height: 300,):new Image.asset('topMenuBar/icon_setting_default.png',width: 300,height: 300,),
                ),
              ),
            new Center(child: RaisedButton(
                  child: Text('Go back'),
                  onPressed: () {
                    print('This is 2nd page');
                    Navigator.pop(context);
                  }),),
            new WebviewScaffold(url: 'https://www.baidu.com'),
        ],


      ) 
    );
  }
}
