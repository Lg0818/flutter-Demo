import 'package:MusicDemo/Util/SizeConfig.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget3 extends StatefulWidget {
  const MyStatefulWidget3({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget3> {

  bool activeJugg = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new GestureDetector(
                  child: Image.asset(
                    'topMenuBar/icon_navi_default.png',
                    width: SizeConfig.blockSizeHorizontal * 3,
                    height: SizeConfig.blockSizeHorizontal * 3,
                  ),
                ),
                new GestureDetector(
                  child: activeJugg
                      ? Image.asset(
                          'topMenuBar/icon_audio_active.png',
                          width: SizeConfig.blockSizeHorizontal * 3,
                          height: SizeConfig.blockSizeHorizontal * 3,
                        )
                      : Image.asset(
                          'topMenuBar/icon_car_default.png',
                          width: SizeConfig.blockSizeHorizontal * 3,
                          height: SizeConfig.blockSizeHorizontal * 3,
                        ),
                  onTap: () {
                    print('toPage1');
                    Navigator.pop(context);
                  },
                ),
                new Image.asset(
                  'topMenuBar/icon_phone_default.png',
                  width: SizeConfig.blockSizeHorizontal * 3,
                  height: SizeConfig.blockSizeHorizontal * 3,
                ),
                //active

                new Image.asset(
                  'topMenuBar/icon_car_default.png',
                  width: SizeConfig.blockSizeHorizontal * 3,
                  height: SizeConfig.blockSizeHorizontal * 3,
                ),
                new Image.asset(
                  'topMenuBar/icon_setting_default.png',
                  width: SizeConfig.blockSizeHorizontal * 3,
                  height: SizeConfig.blockSizeHorizontal * 3,
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  '213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_0_1_33_15.png',
                  width: SizeConfig.blockSizeHorizontal * 220,
                  height: SizeConfig.blockSizeVertical * 220,
                ),
                new Positioned(
                  top: 0,
                  //right: SizeConfig.blockSizeHorizontal*2,
                  child: Column(
                    children: <Widget>[
                      new Container(
                          height: SizeConfig.blockSizeVertical * 10,
                          child: new Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                new Container(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 71,
                                      0,
                                      0,
                                      0),
                                  child: new Image.asset(
                                    '213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_3_6_33_15.png',
                                    width: SizeConfig.blockSizeHorizontal * 2,
                                    height: SizeConfig.blockSizeHorizontal * 2,
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 1.5,
                                      0,
                                      0,
                                      0),
                                  child: new Image.asset(
                                    '213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_2_6_33_15.png',
                                    width: SizeConfig.blockSizeHorizontal * 2,
                                    height: SizeConfig.blockSizeHorizontal * 2,
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 1.5,
                                      0,
                                      0,
                                      0),
                                  child: new Image.asset(
                                    '213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_1_6_33_15.png',
                                    width: SizeConfig.blockSizeHorizontal * 2,
                                    height: SizeConfig.blockSizeHorizontal * 2,
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.fromLTRB(
                                      SizeConfig.blockSizeHorizontal * 1.5,
                                      0,
                                      0,
                                      0),
                                  child: new Text(
                                    '4:12',
                                    style: new TextStyle(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xfff0f0f4),
                                    ),
                                  ),
                                ),
                              ])),
                    ],
                  ),
                ),
                new Positioned(
                  top: SizeConfig.blockSizeVertical * 20,
                  left: SizeConfig.blockSizeHorizontal * 10,
                  child: new Container(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 5,
                        SizeConfig.blockSizeVertical * 1,
                        0,
                        0),
                    child: Row(
                      children: <Widget>[
                        new Stack(
                          children: <Widget>[
                            Positioned(
                              top: SizeConfig.blockSizeVertical*4,
                              child: new Container(
                              width: SizeConfig.blockSizeHorizontal*74.8,
                              height: SizeConfig.blockSizeVertical*5,
                              color: const Color(0xff3f49c4),
                              child: Container(
                                width: 800,
                                child: new Image.asset('213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_0_1_4_4_33_15.png',alignment:Alignment(-0.9, -0.1),),
                              ),
                            ),),
                            Positioned(
                              child: new Container(
                                width: SizeConfig.blockSizeHorizontal*75,
                                //color: Colors.pink,
                                padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 8,
                                    0,
                                    0,
                                    0),
                                child: Text(
                                  'AM',
                                  style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 4,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Positioned(
                  top: SizeConfig.blockSizeVertical * 40,
                  left: SizeConfig.blockSizeHorizontal * 10,
                  child: new Container(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 5,
                        SizeConfig.blockSizeVertical * 1,
                        0,
                        0),
                    child: Row(
                      children: <Widget>[
                        new Stack(
                          children: <Widget>[
                            Positioned(
                              top: SizeConfig.blockSizeVertical*4,
                              child: new Container(
                              width: SizeConfig.blockSizeHorizontal*74.8,
                              height: SizeConfig.blockSizeVertical*5,
                              
                              child: Container(
                                width: 800,
                                child: new Image.asset('213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_0_1_4_4_33_15.png',alignment:Alignment(-0.9, 0),),
                              ),
                            ),),
                            Positioned(
                              child: new Container(
                                width: SizeConfig.blockSizeHorizontal*75,
                                //color: Colors.pink,
                                padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 8,
                                    0,
                                    0,
                                    0),
                                child: Text(
                                  'FM',
                                  style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 4,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                                new Positioned(
                  top: SizeConfig.blockSizeVertical * 60,
                  left: SizeConfig.blockSizeHorizontal * 10,
                  child: new Container(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 5,
                        SizeConfig.blockSizeVertical * 1,
                        0,
                        0),
                    child: Row(
                      children: <Widget>[
                        new Stack(
                          children: <Widget>[
                            Positioned(
                              top: SizeConfig.blockSizeVertical*4,
                              child: new Container(
                              width: SizeConfig.blockSizeHorizontal*74.8,
                              height: SizeConfig.blockSizeVertical*5,
                              
                              child: Container(
                                width: 800,
                                child: new Image.asset('213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_4_3_33_15.png',alignment:Alignment(-0.9, 0),),
                              ),
                            ),),
                            Positioned(
                              child: new Container(
                                width: SizeConfig.blockSizeHorizontal*75,
                                //color: Colors.pink,
                                padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 8,
                                    0,
                                    0,
                                    0),
                                child: Text(
                                  '交通情報',
                                  style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 4,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Positioned(
                  top: SizeConfig.blockSizeVertical * 80,
                  left: SizeConfig.blockSizeHorizontal * 10,
                  child: new Container(
                    width: SizeConfig.blockSizeHorizontal * 80,
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 5,
                        SizeConfig.blockSizeVertical * 1,
                        0,
                        0),
                    child: Row(
                      children: <Widget>[
                        new Stack(
                          children: <Widget>[
                            Positioned(
                              top: SizeConfig.blockSizeVertical*4,
                              child: new Container(
                              width: SizeConfig.blockSizeHorizontal*74.8,
                              height: SizeConfig.blockSizeVertical*5,
                              
                              child: Container(
                                width: 800,
                                child: new Image.asset('213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_0_1_4_2_33_15.png',alignment:Alignment(-0.9, 0),),
                              ),
                            ),),
                            Positioned(
                              child: new Container(
                                width: SizeConfig.blockSizeHorizontal*75,
                                //color: Colors.pink,
                                padding: EdgeInsets.fromLTRB(
                                    SizeConfig.blockSizeHorizontal * 8,
                                    0,
                                    0,
                                    0),
                                child: Text(
                                  'TV',
                                  style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 4,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.blockSizeVertical*76,
                  left: SizeConfig.blockSizeHorizontal*1,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: new Image.asset('213-media (Master @ 92490ae)[_JP010801]/img/common/common/_JP010801-Radio-Startref__070101_7_33_15.png',width: SizeConfig.blockSizeHorizontal*12,height: SizeConfig.blockSizeHorizontal*12,),
                  ),
                  ),

              ],
            ),
            flex: 9,
          ),
        ],
      )),
    );
  }
}
