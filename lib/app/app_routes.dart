// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:get/route_manager.dart';
import 'package:suitmedia_mobile_developer_intern_test/screens/first_screen/view/first_screen_view.dart';
import 'package:suitmedia_mobile_developer_intern_test/screens/second_screen/view/second_screen_view.dart';
import 'package:suitmedia_mobile_developer_intern_test/screens/third_screen/view/third_screen_view.dart';

class AppRoutes {
  static const String FIRST_SCREEN = '/first-screen';
  static const String SECOND_SCREEN = '/second-screen';
  static const String THIRD_SCREEN = '/third-screen';

  static String get GET_INITIAL_ROUTE => FIRST_SCREEN;

  static List<GetPage> get GET_APP_PAGES {
    return [
      GetPage(name: FIRST_SCREEN, page: () => const FirstScreenView()),
      GetPage(name: SECOND_SCREEN, page: () => const SecondScreenView()),
      GetPage(name: THIRD_SCREEN, page: () => const ThirdScreenView())
    ];
  }
}
