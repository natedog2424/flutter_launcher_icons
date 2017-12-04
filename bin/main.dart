import 'dart:async';
import 'package:flutter_launcher_icons/android.dart' as FlutterIconsAndroid;
import 'package:flutter_launcher_icons/ios.dart' as FlutterIconsIos;
import 'package:dart_config/default_server.dart';

main(List<String> arguments) {
  Future<Map> conf = loadConfig("pubspec.yaml");
  conf.then((Map config) {
    if(config['flutter_icons']['image_path'] != null){
      FlutterIconsAndroid.convertAndroid(config);
      FlutterIconsIos.convertIos(config);
    }else{
      print("flutter_icons config not found in pubspec.yaml");
    }
    // FlutterIcons.convertAndroid(config);
  });
  
}
