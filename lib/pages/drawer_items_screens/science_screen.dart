import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/cards/science_card.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Наука',
          style: TextStyle(
              color: Color.fromRGBO(26, 91, 165, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: const [
            ScienceCard(
              title: 'Конференции',
              imagePath: 'assets/images/default_post_preview.png',
              url: 'https://math.uniyar.ac.ru/conferences',
            ),
            ScienceCard(
                title: 'Семинары',
                imagePath: 'assets/images/default_post_preview.png'),
            ScienceCard(
              title:
                  'Региональный научно-образовательный математический центр «Центр интегрируемых систем»',
              imagePath: 'assets/images/cis_logo.png',
              url: 'https://cis.uniyar.ac.ru/',
            ),
            ScienceCard(
              title: 'Лаборатории',
              imagePath: 'assets/images/default_post_preview.png',
            ),
            ScienceCard(
              title: 'Научные проекты',
              imagePath: 'assets/images/default_post_preview.png',
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
