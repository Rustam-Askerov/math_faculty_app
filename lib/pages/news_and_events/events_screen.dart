import 'package:flutter/material.dart';
import 'package:math_faculty_app/pages/news_and_events/cards/events_card.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: const [
          EventsCard(
            title: 'Молодежная конференция «Путь в науку. Математика 2022»',
            place: 'ЯрГУ, 7 корпус (Союзная, 144) и online',
            date: '10 мая 2022',
            time: '00:00',
            publicateDate: '14 апреля 2022 г.',
            event:
                'В мае 2022 на математическом факультете ЯрГУ пройдет ежегодная научная конференция студентов, аспирантов и молодых ученых «Путь в науку. Математика 2022».',
          ),
          EventsCard(
            title: 'Northern Eurasia Finals: Online. Результаты',
            place: 'ЯрГУ',
            publicateDate: ' 14 декабря 2020 г.',
            time: '08:52',
            date: '14 декабря 2020',
            event:
                'Результаты NEERC\n\nNorthern Eurasia Finals: Online 2020 успешно завершен!\n\nПоздравляем команды, которые встретятся в оффлайн-туре Северного Евразийского финала, полуфинала ICPC 2021! И что совсем отлично, одна из команд, Yaroslavl SU: CrbInge Team (Povarov, Voronin, Klimov), состоящая из студентов математического факультета и факультета информатики и вычислительной техники.\n\nКоманда вошла в топ-50 лучших команд и будет представлять ЯрГУ в оффлайн-соревновании, которое будет проходить весной. Вместе с этим правом команда награждена дипломами третьей степени. По результатам этого соревнования лучшие команды будут отобраны в финал чемпионата мира-2021. Общий список команд можно увидеть по ссылке https://vk.com/@nercnews-nef-offline-2020\n\n#icpc #росмолодежь #фадм #doit #icpc #crrc',
          ),
          EventsCard(
            title: 'Northern Eurasia Finals: Online',
            place: 'ЯрГУ',
            publicateDate: ' 13 декабря 2020 г.',
            time: '08:52',
            date: '13 декабря 2020',
            event:
                'Ход соревнований NEERC\n\nВсе соревнования сезона 2020/21 Северного Евразийского региона проводятся по специальному регламенту. В связи с этим чемпионат Northern Eurasia Finals проводится в два этапа: онлайн и оффлайн. По результатам онлайн-тура лучшие команды будут приглашены на оффлайн-тур соревнований, где и определятся команды, которые будут представлять Северную Евразию в финале ICPC 2021.\n\nОт нашего чемпионата ICPC Central Russia Regional Contest в финал Северной Евразии в итоге пробилось 12 студенческих команд: дополнительную квоту получила команда из Орла Orel SU 3.\n\nОтличительной особенностью этого года является то, что соревнования проводятся онлайн из-за эпидемиологической ситуации, специальный регламент опубликован здесь — http://nerc.itmo.ru/information/contest-rules-2020.html\n\nСледить за ходом соревнований можно в онлайн-трансляции https://youtu.be/pvzNyAhwWFw или на сайте https://nerc.itmo.ru/archive/2020/standings.html\n\nНапомним, что ЯрГУ в этом этапе соревнований представлен тремя командами, в состав которых входят студенты математического факультета и факультета информатики и вычислительной техники.\n\n#icpc #росмолодежь #фадм #doit #icpc #crrc',
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
