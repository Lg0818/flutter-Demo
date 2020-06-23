import 'package:MusicDemo/Components/Animated.dart';
import 'package:MusicDemo/Util/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'RadioPage.dart';

class Aircon extends StatefulWidget {
  const Aircon(MyStatefulWidget myStatefulWidget, {Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Aircon> {
  bool selected = true;

  bool valued = true;

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
                          'topMenuBar/icon_audio_default.png',
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
                  'topMenuBar/icon_car_active.png',
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
            child: Column(
              children: <Widget>[
                new Container(
                    height: SizeConfig.blockSizeVertical * 15,
                    color: const Color(0xFFf0f0f4),
                    padding:
                        new EdgeInsets.all(SizeConfig.blockSizeHorizontal * 0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_1_1_3_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 2.5,
                          height: SizeConfig.blockSizeHorizontal * 2.5,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Text(
                          'Vehicle',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff4281ff),
                          ),
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_1_2_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 0.8,
                          height: SizeConfig.blockSizeHorizontal * 0.8,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Text(
                          'Climate',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff9392A1),
                          ),
                        ),
                      ),
                    ])),
                new Container(
                    height: SizeConfig.blockSizeVertical * 12,
                    color: const Color(0xFFe2e2e7),
                    padding: new EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 1,
                        SizeConfig.blockSizeHorizontal * 1,
                        0,
                        0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 2.5, 0, 0, 0),
                        child: new Text(
                          'Front',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000),
                          ),
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
                          'Rear',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff959699),
                          ),
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
                          'Fragrance',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff959699),
                          ),
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
                          'PM2.5',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff959699),
                          ),
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
                          'Options',
                          style: new TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff5c5d5f),
                          ),
                        ),
                      ),
                    ])),
                new GestureDetector(
                    onTap: (){
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyStatefulWidget3()));

                    },
                    child: Container(
                    color: const Color(0xFFf0f0f4),
                    padding: new EdgeInsets.fromLTRB(
                        0, SizeConfig.blockSizeVertical * 0, 0, 0),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_6_44_15.png',
                          width: SizeConfig.blockSizeHorizontal * 12,
                          height: SizeConfig.blockSizeHorizontal * 12,
                        ),
                      ),
                    ])),
                ),
              ],
            ),
            flex: 4,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                new Container(
                    height: SizeConfig.blockSizeVertical * 10,
                    color: const Color(0xFFfafafa),
                    child: new Row(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 30, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_4_1_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 2,
                          height: SizeConfig.blockSizeHorizontal * 2,
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1.5, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_3_1_0_3.png',
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
                        child: new Image.asset(
                          '213-media (Master @ 92490ae)[_JP030703]/img/common/common/_JP030703-USB-Musicref_JP030901_3_4_44_15.png',
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
                    color: const Color(0xFFfafafa),
                    child:
                        new Column(mainAxisSize: MainAxisSize.max, children: [
                      new Container(
                        color: Color(0xFFfafafa),
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 0,
                            SizeConfig.blockSizeVertical * 12,
                            0,
                            0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_l.png',
                          width: SizeConfig.blockSizeHorizontal * 12,
                          height: SizeConfig.blockSizeVertical * 12,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFfafafa),
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 0,
                            SizeConfig.blockSizeVertical * 1,
                            0,
                            0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_16_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                          height: SizeConfig.blockSizeVertical * 5,
                        ),
                      ),
                    ])),
                new Row(
                  children: <Widget>[
                    new Container(
                      padding: new EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 12,
                          SizeConfig.blockSizeVertical * 6.5,
                          0,
                          0),
                      child: new Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          new Container(
                            height: SizeConfig.blockSizeVertical * 12,
                            width: SizeConfig.blockSizeHorizontal * 12,
                            color: const Color(0xFFfafafa),
                            padding: new EdgeInsets.fromLTRB(
                                SizeConfig.blockSizeHorizontal * 1,
                                SizeConfig.blockSizeVertical * 0,
                                0,
                                0),
                            child: new FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 2, color: Color(0xFFdddde4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              color: Colors.white,
                              textColor: Colors.black,
                              child: new Text(
                                'A/C',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 2.5),
                              ),
                              onPressed: () {
                                print('A/C_clicked');
                                setState(() {
                                  selected = !selected;
                                });
                              },
                            ),
                          ),
                          new Positioned(
                              left: SizeConfig.blockSizeHorizontal * 9,
                              child: new Image.asset(
                                'img/common/common/AC00005-010101-FrontClima_leZone_3_14_0_3.png',
                                width: SizeConfig.blockSizeHorizontal * 2,
                                height: SizeConfig.blockSizeVertical * 2,
                              )),
                        ],
                      ),
                    ),
                    new Container(
                      padding: new EdgeInsets.fromLTRB(
                          SizeConfig.blockSizeHorizontal * 1,
                          SizeConfig.blockSizeVertical * 6.5,
                          0,
                          0),
                      child: new Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          new Container(
                            height: SizeConfig.blockSizeVertical * 12,
                            width: SizeConfig.blockSizeHorizontal * 12,
                            color: const Color(0xFFffffff),
                            padding: new EdgeInsets.fromLTRB(
                                SizeConfig.blockSizeHorizontal * 1,
                                SizeConfig.blockSizeVertical * 0,
                                0,
                                0),
                            child: new FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 2, color: Color(0xFFdddde4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              color: Colors.white,
                              textColor: Colors.black,
                              child: new Text(
                                'Sync',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 2.5),
                              ),
                              onPressed: () {
                                print('Sync_clicked');
                              },
                            ),
                          ),
                          new Positioned(
                              left: SizeConfig.blockSizeHorizontal * 9,
                              child: new Image.asset(
                                'img/common/common/AC00005-010101-FrontClima_leZone_3_14_0_3.png',
                                width: SizeConfig.blockSizeHorizontal * 2,
                                height: SizeConfig.blockSizeVertical * 2,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                new Container(
                  color: const Color(0xFFfafafa),
                  padding: new EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 0, 0, 0, 0),
                  height: SizeConfig.blockSizeVertical * 14,
                  width: SizeConfig.blockSizeHorizontal * 26,
                  child: new Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      new Container(
                        height: SizeConfig.blockSizeVertical * 14,
                        width: SizeConfig.blockSizeHorizontal * 26,
                        color: const Color(0xFFfafafa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1,
                            SizeConfig.blockSizeVertical * 2,
                            0,
                            0),
                        child: new FlatButton(
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 2, color: Color(0xFFdddde4)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          color: Colors.white,
                          textColor: Colors.black,
                          child: new Text(
                            'Climate concierge',
                            textAlign: TextAlign.start,
                            style: new TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal * 2.5),
                          ),
                          onPressed: () {
                            print('Climate concierge_clicked');
                          },
                        ),
                      ),
                      new Positioned(
                          left: SizeConfig.blockSizeHorizontal * 23,
                          top: SizeConfig.blockSizeVertical * 7,
                          child: new Image.asset(
                            'img/common/common/AC00005-010101-FrontClima_leZone_3_14_0_3.png',
                            width: SizeConfig.blockSizeHorizontal * 2,
                            height: SizeConfig.blockSizeVertical * 2,
                          )),
                    ],
                  ),
                ),
                new Container(
                  height: SizeConfig.blockSizeVertical * 2,
                  color: const Color(0xFFffffff),
                ),
                new Container(
                  color: Color(0xFFf8f8fa),
                  height: SizeConfig.blockSizeVertical * 6,
                  child: new Image.asset(
                      'img/common/common/AC00005-010101-FrontClima_leZone_12_0_12_0_3.png'),
                ),
                new Container(
                  color: Color(0xFFf8f8fa),
                  padding: new EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal * 5,
                      SizeConfig.blockSizeVertical * 3,
                      0,
                      0),
                  height: SizeConfig.blockSizeVertical * 5,
                  child: Row(
                    children: [
                      new Container(
                        color: Color(0xFFf8f8fa),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_11_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFf8f8fa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_11_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFf8f8fa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_11_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFf8f8fa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_11_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFf8f8fa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_6_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFf8f8fa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_6_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                      new Container(
                        color: Color(0xFFf8f8fa),
                        padding: new EdgeInsets.fromLTRB(
                            SizeConfig.blockSizeHorizontal * 1, 0, 0, 0),
                        child: new Image.asset(
                          'img/common/common/AC00005-010101-FrontClima_leZone_0_6_0_12_0_3.png',
                          width: SizeConfig.blockSizeHorizontal * 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            flex: 5,
          ),
        ],
      )),
    );
  }
}
