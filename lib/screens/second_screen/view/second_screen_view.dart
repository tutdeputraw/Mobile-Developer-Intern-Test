import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_mobile_developer_intern_test/app/app_routes.dart';
import 'package:suitmedia_mobile_developer_intern_test/features/selected_user_feature.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/color_themes.dart';
import 'package:suitmedia_mobile_developer_intern_test/widgets/appbar_app.dart';
import 'package:suitmedia_mobile_developer_intern_test/widgets/button_app.dart';

import '../../../features/inserted_user_feature.dart';

class SecondScreenView extends StatelessWidget {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApp(
        title: 'Second Screen',
        backOnCLick: () => Get.back(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorThemes.BLACK_TEXT_COLOR,
                  ),
                ),
                Text(
                  InsertedUserFeature.getInsertedUserName,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorThemes.BLACK_TEXT_COLOR,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: GetBuilder<SelectedUserFeature>(
                init: SelectedUserFeature(),
                builder: (_) => Text(
                  _.getSelectedUserName,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorThemes.BLACK_TEXT_COLOR,
                  ),
                ),
              ),
            ),
            ButtonApp(
              text: 'Choose a User',
              onPressed: () => Get.toNamed(AppRoutes.THIRD_SCREEN),
            )
          ],
        ),
      ),
    );
  }
}
