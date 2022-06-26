import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/data/ui_controller.dart';
import 'package:math_faculty_app/pages/news_and_events/cards/events_card.dart';

class EventsScreen extends StatelessWidget {
  EventsScreen({Key? key}) : super(key: key);

  var controller = Get.put(AppDataController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => ListView.builder(
            itemCount: controller.events.length,
            itemBuilder: (context, index) {
              return controller.events[index];
            }),
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            opacity: 0.2,
            image: AssetImage("assets/images/backgroundImage.png"),
            fit: BoxFit.cover),
      ),
    );
  }
}
