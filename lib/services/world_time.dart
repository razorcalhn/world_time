import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String time;
  String location;
  String flag;
  String url;

  WorldTime({
    this.location,this.url,this.flag
});



  Future<void> setTime() async {
    Response response1 = await get('http://worldtimeapi.org/api/timezone/$url');
    Map timedata = jsonDecode(response1.body);

    String datetime = timedata['datetime'];
    String offset = timedata['utc_offset'];
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset.substring(1,3)) ,minutes: int.parse(offset.substring(4,6))));
    time = now.toString();
  }





}
