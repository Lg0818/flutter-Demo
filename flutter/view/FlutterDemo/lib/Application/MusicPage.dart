import 'dart:convert';

import 'package:MusicDemo/Components/RadioPage.dart';
import 'package:MusicDemo/Util/AnimatedAction.dart';
import 'package:MusicDemo/Util/AppBase.dart';
import 'package:MusicDemo/Util/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';


class MusicUI extends StatefulWidget {
  const MusicUI({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MusicUI> {
  bool valued = true;

  bool activeJugg = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                new Image.asset(
                  'topMenuBar/icon_audio_active.png',
                  width: SizeConfig.blockSizeHorizontal * 3,
                  height: SizeConfig.blockSizeHorizontal * 3,
                ),
                new Image.asset(
                  'topMenuBar/icon_phone_default.png',
                  width: SizeConfig.blockSizeHorizontal * 3,
                  height: SizeConfig.blockSizeHorizontal * 3,
                ),
                //

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
                    print('USB Audio UI request ArbitrationManager::ArbitrateUiApps');
                    // _sendHandle();
                    // _channel.sink.close();
                    print('123');
                    
                  },
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
            child: Column(
              children: <Widget>[
                new Container(
                    height: SizeConfig.blockSizeVertical * 15,
                    color: const Color(0xFFf0f0f4),
                    padding:
                        new EdgeInsets.all(SizeConfig.blockSizeHorizontal * 1),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_1_9_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 2.5,
                          height: SizeConfig.blockSizeHorizontal * 2.5,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2, 0, 0, 0),
                        child: new Text(
                          'USB',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 3,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff9393a2),
                          ),
                        ),
                      ),
                    ])),
                new Container(
                    color: const Color(0xFFf0f0f4),
                    padding: new EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 1,
                        SizeConfig.blockSizeHorizontal * 2,
                        0,
                        0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                        child: new Text(
                          'Music',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 3,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 26, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_3_1_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 2,
                          height: SizeConfig.blockSizeHorizontal * 2,
                        ),
                      ),
                    ])),
                new Container(
                    color: const Color(0xFFf0f0f4),
                    padding: new EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 1,
                        SizeConfig.blockSizeHorizontal * 3,
                        0,
                        0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                        child: new Text(
                          'Video',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 3,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 26, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_3_1_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 2,
                          height: SizeConfig.blockSizeHorizontal * 2,
                        ),
                      ),
                    ])),
                new Container(
                    color: const Color(0xFFf0f0f4),
                    padding: new EdgeInsets.fromLTRB(
                        0, SizeConfig.blockSizeVertical * 36, 0, 0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new GestureDetector(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                          child: new Image.asset(
                            '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_6_44_15.png',
                            width: SizeConfig.blockSizeHorizontal * 12,
                            height: SizeConfig.blockSizeHorizontal * 12,
                          ),
                        ),
                        onTap: () {
                          print('radioPage1111111111');
                        },
                      ),
                      new GestureDetector(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: <Widget>[
                              new Image.asset(
                                '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_3_44_15.png',
                                width: SizeConfig.blockSizeHorizontal * 24,
                                height: SizeConfig.blockSizeHorizontal * 12,
                              ),
                              new Positioned(
                                left: SizeConfig.blockSizeHorizontal * 6,
                                top: SizeConfig.blockSizeVertical * 5,
                                child: new Text(
                                  'Sources',
                                  style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 3,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          print('text');
                          Navigator.of(context).push(RippleRoute(
                              MyStatefulWidget3(),
                              RouteConfig.fromContext(context)));
                        },
                      )
                    ])),
              ],
            ),
            flex: 4,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                new Container(
                    height: SizeConfig.blockSizeVertical * 10,
                    color: const Color(0xFFffffff),
                    padding: new EdgeInsets.all(
                        SizeConfig.blockSizeHorizontal * 1.0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 30, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_3_4_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 2,
                          height: SizeConfig.blockSizeHorizontal * 2,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1.5, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_2_4_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 2,
                          height: SizeConfig.blockSizeHorizontal * 2,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1.5, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_1_4_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 2,
                          height: SizeConfig.blockSizeHorizontal * 2,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1.5, 0, 0, 0),
                        child: new Text(
                          '4:12',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 3,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff9393a2),
                          ),
                        ),
                      ),
                    ])),
                new Container(
                    height: SizeConfig.blockSizeVertical * 30,
                    color: const Color(0xFFffffff),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 17,
                            SizeConfig.blockSizeVertical * 7,
                            0,
                            0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_1_0_6_0_8_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 17,
                          height: SizeConfig.blockSizeVertical * 30,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 8, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_2_8_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                          height: SizeConfig.blockSizeVertical * 15,
                        ),
                      ),
                    ])),
                new Center(
                  child: new Container(
                      color: const Color(0xFFffffff),
                      padding: new EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 1,
                          SizeConfig.blockSizeVertical * 3,
                          0,
                          0),
                      child: new Row(mainAxisSize: MainAxisSize.max, children: [
                        new Container(
                          height: SizeConfig.blockSizeVertical * 10,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 17, 0, 0, 0),
                          child: new Text(
                            '{Song Name}',
                            style: new TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ])),
                ),
                new Center(
                  child: new Container(
                      height: SizeConfig.blockSizeVertical * 5,
                      color: const Color(0xFFffffff),
                      padding: new EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                      child: new Row(mainAxisSize: MainAxisSize.max, children: [
                        new Container(
                          height: SizeConfig.blockSizeVertical * 5,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 21, 0, 0, 0),
                          child: new Text(
                            '{Text}',
                            style: new TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 2,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff9393a2),
                            ),
                          ),
                        ),
                      ])),
                ),
                new Center(
                  child: new Container(
                      color: const Color(0xFFffffff),
                      padding: new EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                      child: new Row(children: [
                        new Container(
                          height: SizeConfig.blockSizeVertical * 5,
                          padding: EdgeInsets.fromLTRB(
                              SizeConfig.blockSizeHorizontal * 21, 0, 0, 0),
                          child: new Text(
                            '{Text}',
                            style: new TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 2,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff9393a2),
                            ),
                          ),
                        ),
                      ])),
                ),
                new Container(
                    color: const Color(0xFFffffff),
                    padding: new EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                    height: 30,
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 10, 0, 0, 0),
                        child: new Text(
                          '2:31',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1.5, 0, 0, 0),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: <Widget>[
                            new Image.asset(
                              '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_0_1_3_0_8_44_15.png',
                              width: SizeConfig.blockSizeHorizontal * 20,
                            ),
                            new Positioned(
                                child: new Image.asset(
                              '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_1_1_3_0_8_44_15.png',
                              width: SizeConfig.blockSizeHorizontal * 15,
                            ))
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1.5, 0, 0, 0),
                        child: new Text(
                          '4:15',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ])),
                new Container(
                    height: SizeConfig.blockSizeVertical * 25,
                    color: const Color(0xFFffffff),
                    padding: new EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 5, 0, 0, 0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        height: 100,
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 3, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_0_7_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 6,
                          height: SizeConfig.blockSizeHorizontal * 6,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_1_7_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 6,
                          height: SizeConfig.blockSizeHorizontal * 6,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_4_7_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 8,
                          height: SizeConfig.blockSizeHorizontal * 8,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_2_7_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 6,
                          height: SizeConfig.blockSizeHorizontal * 6,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_3_7_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 6,
                          height: SizeConfig.blockSizeHorizontal * 6,
                        ),
                      ),
                    ])),
              ],
            ),
            flex: 5,
          ),
        ],
      )),
    );
  }
}
