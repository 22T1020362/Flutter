//Trong pubspec.yaml, dưới phần depedencies:, thêm:
// intl: ^0.15.8 để sử dụng hàm format Dates Times trong package đó
// *** flutter_spinkit: ^4.0.0 để dùng loader và spinner
// Pub get để cập nhật
// ở folder assets chèn thêm ảnh về các nước, day và night
// pubspec.yaml mở assets: assets/
import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }));
