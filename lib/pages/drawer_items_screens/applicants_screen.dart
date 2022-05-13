import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class ApplicantsScreen extends StatefulWidget {
  ApplicantsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ApplicantsScreen> createState() => _ApplicantsScreenState();
}

class _ApplicantsScreenState extends State<ApplicantsScreen> {
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
          'Абитуриентам',
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
                Padding(
                  padding: const EdgeInsets.only(
                      top: 35.0, bottom: 35, left: 22, right: 22),
                  child: Text(
                    'Уважаемый абитуриент!\nПриглашаем Вас поступить на\nматематический факультет Ярославского государственного\nуниверситета им. П.Г. Демидова!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16).copyWith(top: 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'В ${DateTime.now().year} г. математический факультет ЯрГУ осуществляет приём абитуриентов на очное обучение по направлениям:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://math.uniyar.ac.ru/for-entrants/napravleniya-i-specialnosti-podgotovki/matematika-i-kompyuternye-nauki'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '«МАТЕМАТИКА И КОМПЬЮТЕРНЫЕ НАУКИ»',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://math.uniyar.ac.ru/for-entrants/napravleniya-i-specialnosti-podgotovki/prikladnaya-matematika-i-informatika'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '«ПРИКЛАДНАЯ МАТЕМАТИКА И ИНФОРМАТИКА»',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://math.uniyar.ac.ru/computer-security'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '«ИНФОРМАЦИОННАЯ БЕЗОПАСНОСТЬ»',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://math.uniyar.ac.ru/for-entrants/napravleniya-i-specialnosti-podgotovki/kompyuternaya-bezopasnost'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '«КОМПЬЮТЕРНАЯ БЕЗОПАСНОСТЬ».',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Вступительные испытания (результаты ЕГЭ) принимаются по следующим предметам: русский язык, математика, информатика и информационно-коммуникационные технологии. На ${DateTime.now().year} год установлены следующие минимальные баллы по этим предметам: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 24,
                              ),
                              Flexible(
                                child: Text(
                                  'русский язык: 40,\nматематика: 39,\nинформатика и информационно-коммуникационные технологии: 42.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Проходные баллы 2019 года на бюджетные места: «Компьютерная безопасность» - 230, «Информационная безопасность» - 226, «Математика и компьютерные науки» - 212, «Прикладная математика и информатика» - 219. Анализ динамики проходных баллов за 5 лет вы можете найти в соответствующих статьях: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://zen.yandex.ru/media/prepod/matematika-i-kompiuternye-nauki-kak-menialis-prohodnye-bally-i-chislo-biudjetnyh-mest-za-5-let-5ea8c24fac8c3b48883f2ef2'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '"Математика и компьютерные науки": как менялись проходные баллы и число бюджетных мест за 5 лет',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://zen.yandex.ru/media/prepod/bakalavriat-informacionnaia-bezopasnost-o-tom-kak-rastet-populiarnost-i-meniaetsia-chislo-biudjetnyh-mest-5e93237142818006932791ab'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '"Информационная безопасность": о том, как растет популярность и меняется число бюджетных мест.',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://zen.yandex.ru/media/prepod/izuchaem-dinamiku-sprosa-i-prohodnyh-ballov-dlia-specialnosti-kompiuternaia-bezopasnost-5ea4f183c9c7e01bd613c66c'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                'Изучаем динамику спроса и проходных баллов для специальности "Компьютерная безопасность"',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Наш факультет располагает опытными и высококвалифицированными преподавательскими кадрами, среди которых 15 докторов наук, профессоров и более 20 кандидатов наук, доцентов. На факультете работают 7 кафедр, 3 научно-исследовательских лаборатории. По ключевым показателям (научная деятельность, качество набора абитуриентов и др) наш факультет входит в первую десятку математических факультетов классических вузов России.\n\nБакалавры могут продолжить свое обучение в двухгодичной магистратуре. На факультете работает аспирантура, действуют специализированные советы по защите диссертаций. Под руководством преподавателей студенты факультета занимаются научной работой по актуальной тематике, принимают участие в конкурсах и олимпиадах, получают премии, занимают призовые места. Если Вы занимались математикой или информатикой ранее, то Вы сможете продолжить исследования в интересующей Вас области и во время обучения на факультете.\n\nПрямо сейчас вы можете ознакомиться с рассказом об олимпиадах одной нашей студентки: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Link(
                            uri: Uri.parse(
                                'https://zen.yandex.ru/media/prepod/blagodaria-olimpiade-ia-uje-v-marte-znala-chto-v-sentiabre-pridu-na-jelannyi-fakultet-studentkoi-interviu-s-pervokursnicei-5e97f5fb7e9eda6dc0c45ace'),
                            builder: (context, followLink) => GestureDetector(
                              onTap: followLink,
                              child: Text(
                                '"Благодаря олимпиаде я уже в марте знала, что в сентябре приду на желанный факультет студенткой"',
                                style: TextStyle(
                                  color: Color.fromRGBO(26, 91, 165, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Выпускники математического факультета всегда востребованы на рынке труда. Они работают в аналитических отделах самых различных учреждений, уверенно получают работу программиста, преподавателя, находят применение своим знаниям на экономических и управленческих должностях. Наши выпускники успешно работают не только во многих организациях региона, но и далеко за его пределами.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Мы будем рады Вас видеть в числе студентов нашего факультета!',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Text(
                                'Нестеров Павел Николаевич',
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          Text(
                            'декан математического факультета Ярославского государственного университета им. П.Г. Демидова',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
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
