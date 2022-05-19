import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Контакты',
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
                const SizedBox(
                  height: 240,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16).copyWith(top: 0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        const SelectableText(
                          'Адрес факультета :',
                          style: TextStyle(
                              color: Color.fromRGBO(26, 91, 165, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                        const SelectableText(
                          '150008, г. Ярославль, ул. Союзная, 144',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                        const SelectableText(
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
                          children: const [
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
                        const SelectableText(
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
                          children: const [
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
                          children: const [
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
                          children: const [
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
                        const SelectableText(
                          'E-mail по вопросам поступления : ',
                          style: TextStyle(
                            color: Color.fromRGBO(26, 91, 165, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                        const SelectableText(
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
                            child: const Text(
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
            margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fitWidth)),
          ),
        ],
      ),
    );
  }
}
