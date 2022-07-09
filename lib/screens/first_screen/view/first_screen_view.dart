import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/assets.dart';
import 'package:suitmedia_mobile_developer_intern_test/widgets/button_app.dart';
import 'package:suitmedia_mobile_developer_intern_test/widgets/text_form_field_app.dart';

import '../controller/first_screen_controller.dart';

class FirstScreenView extends GetView<FirstScreenController> {
  const FirstScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FirstScreenController());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Asset.BACKGROUND_IMAGE),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Asset.BUTTON_ADD_PHOTO_IMAGE,
                  height: Get.width * 0.3,
                  width: Get.width * 0.3,
                ),
                const SizedBox(height: 58.12),
                TextFormFieldApp(
                  label: 'Name',
                  onChanged: (text) => controller.onNameChanged(text),
                ),
                const SizedBox(height: 22.12),
                TextFormFieldApp(
                  label: 'Palindrome',
                  onChanged: (text) => controller.onPalindromeChanged(text),
                ),
                const SizedBox(height: 45),
                ButtonApp(
                  text: 'CHECK',
                  onPressed: () => controller.checkButtonOnClick(),
                ),
                const SizedBox(height: 15),
                ButtonApp(
                  text: 'NEXT',
                  onPressed: () => controller.nextButtonOnClick(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
