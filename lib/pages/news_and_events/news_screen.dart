import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/data/ui_controller.dart';
import 'package:math_faculty_app/pages/news_and_events/cards/news_card.dart';
import 'package:url_launcher/link.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);
  var controller = Get.put(AppDataController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => ListView.builder(
            itemCount: controller.news.length,
            itemBuilder: (context, index) {
              return controller.news[index];
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

class PmiInfo extends StatelessWidget {
  const PmiInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16).copyWith(bottom: 0),
      height: 200,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(8),
        //   topRight: Radius.circular(24),
        //   bottomRight: Radius.circular(8),
        //   bottomLeft: Radius.circular(24),
        // ),
        image: DecorationImage(
          image: AssetImage("assets/images/jumbotron.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 32,
              top: 16.0,
            ),
            child: Text(
              'ПМИ+',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 32, top: 16.0),
            child: Text(
              'Новая углубленная\nобразовательная программа по\nматематике и информатике',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 32, top: 8.0),
              child: Link(
                uri: Uri.parse('https://math.uniyar.ac.ru/pmiplus'),
                builder: (context, followLink) => ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        side: const BorderSide(
                          width: 0,
                          color: Color.fromRGBO(26, 91, 165, 1),
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Больше информации',
                    style: TextStyle(
                        color: Color.fromRGBO(26, 91, 165, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: followLink,
                ),
              )),
        ],
      ),
    );
  }
}
