import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/cards/science_card.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/soft_screen.dart';
import 'package:math_faculty_app/pages/news_and_events/cards/events_card.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Студентам',
          style: TextStyle(
              color: Color.fromRGBO(26, 91, 165, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(26, 91, 165, 1),
              ),
              onPressed: () {
                Get.back();
              },
            );
          },
        ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: const [
            ScienceCard(
              title: 'КОНФЕРЕНЦИЯ "ПУТЬ В НАУКУ. МАТЕМАТИКА"',
              imagePath: 'assets/images/default_post_preview.png',
              url: 'https://math.uniyar.ac.ru/put-v-nauku-2022',
            ),
            ScienceCard(
              title: 'Кафедры',
              imagePath: 'assets/images/jumbotron.png',
              url: 'https://math.uniyar.ac.ru/departments',
            ),
            ScienceCard(
              title: 'Кружки для студентов',
              imagePath: 'assets/images/default_post_preview.png',
              url: 'https://math.uniyar.ac.ru/kruzhki-dlya-studentov',
            ),
            ScienceCard(
              title: 'Семинары',
              imagePath: 'assets/images/default_post_preview.png',
              url: 'https://math.uniyar.ac.ru/for-students/seminary',
            ),
            ScienceCard(
              title: 'Программное обеспечение',
              imagePath: 'assets/images/default_post_preview.png',
              child: SoftScreen(),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.2,
              image: AssetImage("assets/images/backgroundImage.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
