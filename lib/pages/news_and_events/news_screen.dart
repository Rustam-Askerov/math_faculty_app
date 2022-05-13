import 'package:flutter/material.dart';
import 'package:math_faculty_app/pages/news_and_events/cards/news_card.dart';
import 'package:url_launcher/link.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16).copyWith(bottom: 0),
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
                    padding: EdgeInsets.only(left: 32, top: 8.0),
                    child: Link(
                      uri: Uri.parse('https://math.uniyar.ac.ru/pmiplus'),
                      builder: (context, followLink) => ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          ),
          NewsCard(
            news:
                '   Друзья! Мы будем рады видеть на ОТКРЫТОЙ ОЛИМПИАДЕ ПО МАТЕМАТИКЕ и научно-практической конференции школьников "Первый шаг" всех учащихся 10-х и 11-х классов, которые планируют связать свое будущее с самыми перспективными направлениями - ИТ, программированием, аналитикой и т.д.\n\nОтборочный тур будет включать в себя задания уровня ЕГЭ и пройдет в дистанционном формате в апреле. Разумеется, после подведения итогов 1 тура будет подробный разбор и обратная связь, ну а тем, кто планирует поступать на наш факультет, эти мероприятия дают приятные бонусы - до 10 баллов к сумме ЕГЭ (т.к. и Олимпиада, и Конференция входят в перечень Минпросвещения).\n\nПодробная информация - на странице math.uniyar.ac.ru/olimpiada\n\nДля участия необходимо заполнить регистрационную форму. Регистрация открыта до 14-00 14 апреля.\n\nUPD: Подведены итоги заочного тура. Список лидеров, прошедших во 2 тур, можно посмотреть здесь. Очный тур пройдет 30 апреля, всем его участникам 23 апреля были отправлены письма с инструкцией.\n\nUPD-2: До 9 мая продолжается прием работ в рамках конференции "Первый шаг".',
            title: 'Открытая Олимпиада и Региональная конференция "Первый шаг"',
            date: '10 апреля 2022 г.',
          ),
          NewsCard(
            news:
                '   Друзья, уже совсем скоро будем ждать вас с 10.00 на большом Дне Открытых дверей университета. Встречаемся в 10.00 по адресу: Ярославль, ул. Собинова, 36 а.\n\nВ программе:\n\n       с 10.00 до 10.30 - в фойе первого этажа - свободное общение с представителями факультетов, приемной комиссии,\n       с 10.30 до 11.30 - в актовом зале - торжественная часть, знакомство с первыми лицами университета;\n        с 11.30 до 14.00 - в ауд. №5 - информация о поступлении на наш факультет, учебе и будущей работе (расскажут декан, студенты, преподаватели и представители фирм-работодателей), а затем - мастер-класс по решению из пробного ЕГЭ. Вот что мы для вас приготовили:\n\n        1.Декан нашего факультета Павел Нестеров расскажет о том, почему учиться у нас почетно и интересно. Не забудем и про проект ПМИ+ (тот самый, совместный с ВШЭ и МГУ),\n\n       2. О работе в ИТ-фирмах (и не только) расскажут программист Мария Шадричева, аналитик Женя Каликина и директор института информационной безопасности ЯрГУ Дмитрий Мурин,\n\n       3. Про нюансы подачи документов, конкурсные списки и важные этапы поступления расскажет Victoria Kocherova,\n\n        4. Про поступление и учебу, насыщенную и интересную студенческую жизнь вам поведают наши прекрасные студентки и студенты Ульянка, Маша, Даниил, Арсений, Тенгиз, Никита и Максим,\n\n       5. Мастер-класс по решению задач ЕГЭ по информатике проведет для вас профессор Evgenii Berezhnoi\nА еще расскажем об итогах пробных ЕГЭ и о получении дополнительных баллов победителям и призерам нашей Олимпиады и Конференции. Кстати, если хотите забрать свою работу с пробного ЕГЭ по математике или получить комментарии по набранным баллам - это тоже можно будет сделать.',
            title: 'Программа Дня открытых дверей 10 апреля',
            date: '23 апреля 2022 г.',
          ),
          NewsCard(
            videoUrl: 'https://vk.com/video-108604898_456239164',
            news: '',
            title: 'Декан приглашает!',
            date: '05 апреля 2022 г.',
          ),
        ],
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
