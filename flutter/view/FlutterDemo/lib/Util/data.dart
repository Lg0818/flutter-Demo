class MyData {
  final String interface;
  final String app_id;
  final String contents;
  final int result;

  MyData(this.interface, this.app_id, this.contents, this.result);

  MyData.fromJson(Map<String, dynamic> json)
      : interface = json['interface'],
        app_id = json['app_id'],
        contents = json['contents'],
        result = json['result']
        ;

}

class AirConData {
  final String interface;
  final String app_id;
  final String contents;
  final int result;

  AirConData(this.interface, this.app_id, this.contents, this.result);

  AirConData.fromJson(Map<String, dynamic> json)
      : interface = json['interface'],
        app_id = json['app_id'],
        contents = json['contents'],
        result = json['result']
        ;

}