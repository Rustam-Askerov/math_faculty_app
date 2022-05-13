import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';
import 'package:video_player/video_player.dart';

class SoftScreen extends StatefulWidget {
  const SoftScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SoftScreen> createState() => _SoftScreenState();
}

class _SoftScreenState extends State<SoftScreen> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Программное обеспечение',
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
        //iconTheme: IconTheme(data: IconThemeData(color: Color.fromRGBO(26, 91, 165, 1)), child: ),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
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
                SizedBox(
                  height: 240,
                ),
                Expanded(
                  child: Container(
                    width: Get.size.width,
                    padding: EdgeInsets.all(16).copyWith(top: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        SelectableText(
                          'На факультете действует программа Майкрософт «Imagine» – ПО для учебных и исследовательских целей. Это ОС, серверные службы, средства разработки, доступ к облачным сервисам Azure, учебные курсы (eLearning), всего более 150 наименований.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Link(
                          uri: Uri.parse(
                              'https://math.uniyar.ac.ru/for-students/programmnoe-obespechenie'),
                          builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: SelectableText(
                              'Обзор продуктов',
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Link(
                          uri: Uri.parse(
                              'https://math.uniyar.ac.ru/for-students/programmnoe-obespechenie'),
                          builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: SelectableText(
                              'Online-магазин факультета',
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
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
            margin: EdgeInsets.only(left: 16, right: 16, top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/default_post_preview.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ],
      ),
    );
  }
}
