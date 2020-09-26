import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class TVModel extends ChangeNotifier {
  int counter = 0;
  void power() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv");
    print('POWER: ${baseUrl.trim()}/tv');
    notifyListeners();
  }

  Future<void> channel(key) async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_${key}");
    print('CHANNEL: ${key} ${baseUrl.trim()}/tv_${key}');
    notifyListeners();
  }

  Future<void> menu() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_menu");
    print('MENU: ${baseUrl.trim()}/tv_menu');
    notifyListeners();
  }

  Future<void> volumeUp() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_vol_up");
    print('VOLUME UP: ${baseUrl.trim()}/tv_vol_up');
    notifyListeners();
  }

  Future<void> volumeDown() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_vol_down");
    print('VOLUME DOWN: ${baseUrl.trim()}/tv_vol_down');
    notifyListeners();
  }

  Future<void> ok() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_submit");
    print('OK: ${baseUrl.trim()}/tv_submit');
    notifyListeners();
  }

  Future<void> up() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_up");
    print('UP: ${baseUrl.trim()}/tv_up');
    notifyListeners();
  }

  Future<void> down() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_down");
    print('DOWN: ${baseUrl.trim()}/tv_down');
    notifyListeners();
  }

  Future<void> left() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_left");
    print('LEFT: ${baseUrl.trim()}/tv_left');
    notifyListeners();
  }

  Future<void> right() async {
    String baseUrl = await rootBundle.loadString('./base_url.txt');
    await http.get("${baseUrl.trim()}/tv_right");
    print('RIGHT: ${baseUrl.trim()}/tv_right');
    notifyListeners();
  }
}
