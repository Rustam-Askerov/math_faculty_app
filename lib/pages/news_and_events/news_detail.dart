import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';

class NewsDetail extends StatelessWidget {
  NewsDetail(
      {Key? key, required this.title, required this.news, this.videoUrl = ''})
      : super(key: key);

  final String title;
  final String news;
  final String videoUrl;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${title}',
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
                        Text(
                          '${title}',
                          style: const TextStyle(
                              color: Color.fromRGBO(26, 91, 165, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            controller: controller,
                            child: Column(
                              children: [
                                news != ''
                                    ? Text(
                                        '${news}',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      )
                                    : const SizedBox(),
                                videoUrl != ''
                                    ? Link(
                                        uri: Uri.parse(videoUrl),
                                        builder: (context, followLink) =>
                                            GestureDetector(
                                          onTap: followLink,
                                          child: const Text(
                                            'Посмотреть видео',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  26, 91, 165, 1),
                                              fontSize: 32,
                                              fontWeight: FontWeight.w800,
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
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
