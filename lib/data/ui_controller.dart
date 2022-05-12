import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:math';

class AppDataController extends GetxController {
  RxInt news_and_events_page_index = 0.obs;

  void updateNewsEventsPageIndex(int value) {
    news_and_events_page_index.value = value;
    update();
  }
}
