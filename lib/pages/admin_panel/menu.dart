import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/pages/admin_panel/publicate_news_screen.dart';
import 'package:url_launcher/link.dart';

class AdminMenu extends StatelessWidget {
  AdminMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Меню администратора',
          style: const TextStyle(
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
        //iconTheme: IconTheme(data: IconThemeData(color: Color.fromRGBO(26, 91, 165, 1)), child: ),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(40, 137, 245, 1),
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                opacity: 0.2,
                fit: BoxFit.cover,
              ),
            ),
            width: Get.size.width,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 35.0, bottom: 35, left: 20, right: 16),
                    child: Text(
                      'Добро пожаловать\nв меню администратора.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: Get.size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(PublicateNewsScreen());
                          },
                          child: Row(
                            children: const [
                              Icon(
                                Icons.newspaper,
                                size: 30,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Опубликовать новость',
                                style: TextStyle(
                                    color: Color.fromRGBO(26, 91, 165, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: Get.size.width,
                          height: 2,
                          color: Color.fromRGBO(26, 91, 165, 1),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.newspaper,
                                size: 30,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Опубликовать событие',
                                style: TextStyle(
                                    color: Color.fromRGBO(26, 91, 165, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: Get.size.width,
                          height: 2,
                          color: Color.fromRGBO(26, 91, 165, 1),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.newspaper,
                                size: 30,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Изменить контактные ссылки',
                                style: TextStyle(
                                    color: Color.fromRGBO(26, 91, 165, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: Get.size.width,
                          height: 2,
                          color: Color.fromRGBO(26, 91, 165, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
