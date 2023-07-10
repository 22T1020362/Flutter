//import package mới intl để format
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = ""; //location name for the UI
  String time = ""; //the time in that location
  String flag = ""; //url to an asset flag icon
  String url = ""; //location url for api endpoint
  bool isDaytime = true; //true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url});
  //onyly call function getTime() when its done
  //reason: to call it in loading.dart
  Future<void> getTime() async {
    try {
      //json tạo ra 1 API fake (địa chỉ web) với thông tin data random trên đấy.
      Response response =
          await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data);
      //get properties from data
      String datetime = data['datetime'];
      String offset =
          data['utc_offset'].substring(1, 3); // lay phan nguyen cua utc
      // print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      //cập nhật sự chênh lệch múi giờ
      //actual time in London
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property
      //Format lại để dễ nhìn, dạng giờ có AM và PM
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    //print the error and the app shows red error
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data'; //print this if has an error
    }
  }
}

// WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
