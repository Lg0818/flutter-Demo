import 'dart:convert';
import 'package:MusicDemo/Components/AirconPage.dart';
import 'package:MusicDemo/Util/data.dart';
import 'package:web_socket_channel/io.dart';
import '../main.dart';

class AppBase {
  IOWebSocketChannel _channel_AppBase_AppManager =
      IOWebSocketChannel.connect('ws://localhost:10002');

  void connectToAppManager() {
    print('AppBase : connect AppManager port:10002');
    _channel_AppBase_AppManager =
        IOWebSocketChannel.connect('ws://localhost:10002');
  }

// init method
  void init(context) {
    print('AppBase : connect AppManager port:10002');
    _channel_AppBase_AppManager.stream.listen((message) {
      print('AppBase: recived $message from AppManager');
      var json = jsonDecode(message.toString());
      var Mydata = new MyData.fromJson(json);
      if (Mydata.interface == 'onInActiveView') {
        MyApp().onInActiveView(context);
      }
      if (Mydata.interface == 'OnActiveView') {
        print('AppBase : recived AppManager airconUI OnActiveView ');
        print('AppBase : return airconUI Show');
        AirConPage().onActiveView(context);
        _channel_AppBase_AppManager.sink.close();
        return;
      }
    });
  }

  void resInactiveview() {
    print('AppBase : recived webApp onInActiveView return');
    print('AppBase : response onInActiveView return to AppManager');
    _channel_AppBase_AppManager.sink.add(
      jsonEncode(
        {
          'interface': 'resonInActiveView',
          'param': [
            {'app_id': 'USBAudioUI'},
          ],
        },
      ),
    );
  }

  void resonActiveView() {
    print('AppBase : response AppManager::OnActiveView');
    _channel_AppBase_AppManager.sink.add(
      jsonEncode(
        {
          'interface': 'onActiveView',
          'param': [
            {'app_id': 'AirConUI'},
          ],
        },
      ),
    );
  }

  void close() {
    _channel_AppBase_AppManager.sink.close();
  }
}
