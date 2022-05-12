import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/pages/news_and_events/events_detail.dart';

class EventsCard extends StatelessWidget {
  const EventsCard(
      {Key? key,
      required this.title,
      required this.place,
      required this.date,
      required this.time,
      required this.event,
      required this.publicateDate})
      : super(key: key);

  final String event;
  final String title;
  final String date;
  final String publicateDate;
  final String place;
  final String time;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.to(EventsDetail(
            title: title, event: event, place: place, date: date, time: time));
      }),
      child: Container(
        margin: EdgeInsets.all(16).copyWith(bottom: 0),
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(209, 209, 209, 1), width: 0.5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/default_post_preview.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 16.0, right: 16),
                  child: Text(
                    '${title}',
                    style: TextStyle(
                        color: Color.fromRGBO(26, 91, 165, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        '${date}',
                        style: TextStyle(
                            color: Color.fromRGBO(26, 91, 165, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
