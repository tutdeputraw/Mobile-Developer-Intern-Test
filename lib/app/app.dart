import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:suitmedia_mobile_developer_intern_test/app/app_bindings.dart';
import 'package:suitmedia_mobile_developer_intern_test/app/app_routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.GET_INITIAL_ROUTE,
      getPages: AppRoutes.GET_APP_PAGES,
      initialBinding: AppBindings(),
    );
  }
}
