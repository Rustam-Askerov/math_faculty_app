import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';

class SoftScreen extends StatelessWidget {
  const SoftScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Программное обеспечение',
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
                const SizedBox(
                  height: 240,
                ),
                Expanded(
                  child: Container(
                    width: Get.size.width,
                    padding: const EdgeInsets.all(16).copyWith(top: 0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const SelectableText(
                          'На факультете действует программа Майкрософт «Imagine» – ПО для учебных и исследовательских целей. Это ОС, серверные службы, средства разработки, доступ к облачным сервисам Azure, учебные курсы (eLearning), всего более 150 наименований.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Link(
                          uri: Uri.parse(
                              'https://catalog.imagine.microsoft.com/ru-ru/catalog'),
                          builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: GestureDetector(
                              onTap: followLink,
                              child: const SelectableText(
                                'Обзор продуктов',
                                style: TextStyle(
                                    color: Color.fromRGBO(26, 91, 165, 1),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Link(
                          uri: Uri.parse(
                              'https://uniyar-math.onthehub.com/WebStore/Welcome.aspx'),
                          builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: GestureDetector(
                              onTap: followLink,
                              child: const SelectableText(
                                'Online-магазин факультета',
                                style: TextStyle(
                                    color: Color.fromRGBO(26, 91, 165, 1),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 280,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/default_post_preview.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ],
      ),
    );
  }
}
