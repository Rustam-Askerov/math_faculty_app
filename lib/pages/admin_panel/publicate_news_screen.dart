import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';
import 'package:math_faculty_app/data/ui_controller.dart';
import 'package:url_launcher/link.dart';

class PublicateNewsScreen extends StatefulWidget {
  PublicateNewsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PublicateNewsScreen> createState() => _PublicateNewsScreenState();
}

class _PublicateNewsScreenState extends State<PublicateNewsScreen> {
  TextEditingController _title_controller = TextEditingController();

  TextEditingController _url_controller = TextEditingController();

  TextEditingController _news_text_controller = TextEditingController();
  TextEditingController _date_controller = TextEditingController();
  ScrollController _scroll_controller = ScrollController();

  var controller = Get.put(AppDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Публикация новости',
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
      body: Container(
        height: Get.size.height,
        padding: EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundImage_cutted.png'),
            opacity: 0.2,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            TextField(
              controller: _title_controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(26, 91, 165, 1), width: 2),
                ),
                labelText: 'Заголовок',
                labelStyle: TextStyle(
                    color: Color.fromRGBO(26, 91, 165, 1).withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _date_controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(26, 91, 165, 1), width: 2),
                ),
                labelText: 'Дата',
                labelStyle: TextStyle(
                    color: Color.fromRGBO(26, 91, 165, 1).withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _url_controller,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(26, 91, 165, 1), width: 2),
                ),
                labelText: 'Ccылка на видео-ролик',
                labelStyle: TextStyle(
                    color: Color.fromRGBO(26, 91, 165, 1).withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            MarkdownTextInput(
              (String value) => {},
              '',
              label: 'Новость',
              actions: MarkdownType.values,
              controller: _news_text_controller,
            ),
            // TextField(
            //   controller: _news_text_controller,
            //   keyboardType: TextInputType.multiline,
            //   maxLines: null,
            //   decoration: InputDecoration(
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8),
            //       borderSide: BorderSide(
            //           color: Color.fromRGBO(26, 91, 165, 1), width: 2),
            //     ),
            //     labelText: 'Содержание новости...',
            //     labelStyle: TextStyle(
            //         color: Color.fromRGBO(26, 91, 165, 1).withOpacity(0.7),
            //         fontSize: 16,
            //         fontWeight: FontWeight.w400),
            //   ),
            // ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: Get.size.width,
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(26, 91, 165, 1),
                  ),
                ),
                onPressed: () {
                  controller.addNews(
                      _title_controller.text.toString(),
                      _date_controller.text.toString(),
                      _url_controller.text.toString(),
                      _news_text_controller.text.toString());
                  _title_controller.clear();
                  _date_controller.clear();
                  _url_controller.clear();
                  _news_text_controller.clear();
                  final snackBar = SnackBar(
                    content: const Text('Новость успешно опубликована'),
                    action: SnackBarAction(
                      label: 'ОК',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  'Опубликовать',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
