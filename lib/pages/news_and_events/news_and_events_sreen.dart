import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/data/ui_controller.dart';
import 'package:math_faculty_app/pages/admin_panel/menu.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/applicants_screen.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/contacts_screen.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/science_screen.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/students_screen.dart';
import 'package:math_faculty_app/pages/news_and_events/events_screen.dart';
import 'package:math_faculty_app/pages/news_and_events/news_screen.dart';

class NewsAndEventsScreen extends StatefulWidget {
  const NewsAndEventsScreen({Key? key}) : super(key: key);

  @override
  State<NewsAndEventsScreen> createState() => _NewsAndEventsScreenState();
}

class _NewsAndEventsScreenState extends State<NewsAndEventsScreen> {
  var getXcontroller = Get.put(AppDataController());

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    getXcontroller.updateNewsEventsPageIndex(index);
    //
    //
    //using this page controller you can make beautiful animation effects

    _pageController.animateToPage(
        getXcontroller.news_and_events_page_index.value,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInSine);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        drawerEdgeDragWidth: 20,
        //drawerScrimColor: Color.fromRGBO(40, 137, 245, 1),
        drawer: Drawer(
          backgroundColor: Colors.white, //Color.fromRGBO(40, 137, 245, 1),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomLeft),
                    color: Color.fromRGBO(29, 47, 93, 1),
                  ),
                  child: Text('')),
              Container(
                padding: const EdgeInsets.all(16).copyWith(top: 10),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/backgroundImage_cutted.png',
                        ),
                        fit: BoxFit.cover,
                        opacity: 0.35)),
                height: Get.size.height - 210,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(ApplicantsScreen(), popGesture: true);
                          },
                          child: Row(
                            children: const [
                              Image(
                                image:
                                    AssetImage('assets/images/abiturients.png'),
                                width: 43,
                                height: 43,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Абитуриентам',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(26, 91, 165, 1)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const StudentsScreen(), popGesture: true);
                          },
                          child: Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/images/students.png'),
                                width: 43,
                                height: 43,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Cтудентам',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(26, 91, 165, 1)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const ScienceScreen(), popGesture: true);
                          },
                          child: Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/images/science.png'),
                                width: 43,
                                height: 43,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Наука',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(26, 91, 165, 1)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const ContactsScreen(), popGesture: true);
                          },
                          child: Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/images/contacts.png'),
                                width: 43,
                                height: 43,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Контакты',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(26, 91, 165, 1)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(AdminMenu());
                      },
                      child: Row(
                        children: const [
                          Image(
                            image: AssetImage('assets/images/settings.png'),
                            width: 42,
                            height: 42,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Версия 0.0.1(Pre-Alpha)',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(26, 91, 165, 1)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromRGBO(26, 91, 165, 1),
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
          title: getXcontroller.news_and_events_page_index == 0
              ? const Text(
                  "Новости",
                  style: TextStyle(color: Color.fromRGBO(26, 91, 165, 1)),
                )
              : const Text("События",
                  style: TextStyle(color: Color.fromRGBO(26, 91, 165, 1))),
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'Новости',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'События',
            ),
          ],
          currentIndex: getXcontroller.news_and_events_page_index.value,
          selectedItemColor: const Color.fromRGBO(26, 91, 165, 1),
          onTap: _onItemTapped, //updateIndex,
          backgroundColor: Colors.white,
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: getXcontroller.updateNewsEventsPageIndex,
          children: <Widget>[
            NewsScreen(),
            EventsScreen(),
          ],
        ),
      ),
    );
  }
}
