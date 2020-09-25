import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TVModel extends ChangeNotifier {
  final baseUrl = "http://a.ze.gs/broadlinkjs-rm-cli/34:ea:34:42:a9:66";
  int counter = 0;
  void power() async {
    await http.get("${this.baseUrl}/tv");
    notifyListeners();
  }

  void channel(key) async {
    await http.get("${this.baseUrl}/tv_${key}");
    print('CHANNEL: ${key}');
    notifyListeners();
  }

  void menu() async {
    await http.get("${this.baseUrl}/tv_menu");
    print('MENU');
    notifyListeners();
  }

  void volumeUp() async {
    await http.get("${this.baseUrl}/tv_vol_up");
    print('VOLUME UP');
    notifyListeners();
  }

  void volumeDown() async {
    await http.get("${this.baseUrl}/tv_vol_down");
    print('VOLUME DOWN');
    notifyListeners();
  }

  void ok() async {
    await http.get("${this.baseUrl}/tv_submit");
    print('OK');
    notifyListeners();
  }

  void up() async {
    await http.get("${this.baseUrl}/tv_up");
    print('UP');
    notifyListeners();
  }

  void down() async {
    await http.get("${this.baseUrl}/tv_down");
    print('DOWN');
    notifyListeners();
  }

  void left() async {
    await http.get("${this.baseUrl}/tv_left");
    print('LEFT');
    notifyListeners();
  }

  void right() async {
    await http.get("${this.baseUrl}/tv_right");
    print('RIGHT');
    notifyListeners();
  }
}
