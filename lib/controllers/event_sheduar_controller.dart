import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EventShedularController extends GetxController {
  final events = [].obs;

  void addEvent(String event) {
    events.add(event);
  }
}
