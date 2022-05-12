import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class ContactsScreen extends StatefulWidget {
  ContactsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final ScrollController controller = ScrollController();

  late VideoPlayerController _video_controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Контакты',
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
            child: Column(
              children: [
                SizedBox(
                  height: 240,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16).copyWith(top: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        SelectableText(
                          'Адрес факультета :',
                          style: TextStyle(
                              color: Color.fromRGBO(26, 91, 165, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                        SelectableText(
                          '150008, г. Ярославль, ул. Союзная, 144',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                        SelectableText(
                          'Телефоны :',
                          style: TextStyle(
                              color: Color.fromRGBO(26, 91, 165, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SelectableText(
                              'Телефон деканата : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5),
                            ),
                            SelectableText(
                              '+7 4852 78-85-91',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5),
                            ),
                          ],
                        ),
                        SelectableText(
                          'Телефон для справок по вопросам',
                          style: TextStyle(
                              color: Color.fromRGBO(26, 91, 165, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SelectableText(
                              'поступления : ',
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5),
                            ),
                            SelectableText(
                              '+7 4852 78-85-91',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SelectableText(
                              'WhatsApp : ',
                              style: TextStyle(
                                color: Color.fromRGBO(26, 91, 165, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                            SelectableText(
                              '+7 964 482 6310',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SelectableText(
                              'E-mail : ',
                              style: TextStyle(
                                color: Color.fromRGBO(26, 91, 165, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                            SelectableText(
                              'math@uniyar.ac.ru',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        SelectableText(
                          'E-mail по вопросам поступления : ',
                          style: TextStyle(
                            color: Color.fromRGBO(26, 91, 165, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                        SelectableText(
                          'kaphedra@mail.ru',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                        Link(
                          uri: Uri.parse('https://vk.com/math_yargu'),
                          builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: Text(
                              'Группа для абитуриентов ВКонтакте',
                              style: TextStyle(
                                color: Color.fromRGBO(26, 91, 165, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                height: 1.5,
                              ),
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
            margin: EdgeInsets.only(left: 16, right: 16, top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ],
      ),
    );
  }
}
