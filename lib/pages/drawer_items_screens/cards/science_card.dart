import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/pages/news_and_events/events_detail.dart';
import 'package:url_launcher/link.dart';

class ScienceCard extends StatelessWidget {
  const ScienceCard({
    Key? key,
    required this.title,
    required this.imagePath,
    this.url = '',
    this.child,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final String url;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Link(
        uri: Uri.parse(url),
        builder: (builder, followLink) => GestureDetector(
              onTap: url != ''
                  ? followLink
                  : () {
                      child != null ? Get.to(child) : DoNothingAction();
                    },
              child: Container(
                margin: EdgeInsets.all(16).copyWith(bottom: 0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(209, 209, 209, 1), width: 0.5),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("${imagePath}"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '${title}',
                        style: TextStyle(
                            color: Color.fromRGBO(26, 91, 165, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
