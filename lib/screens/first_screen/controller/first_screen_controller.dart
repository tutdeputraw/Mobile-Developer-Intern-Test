import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_developer_intern_test/app/app_routes.dart';
import 'package:suitmedia_mobile_developer_intern_test/features/palindrom_feature.dart';
import 'package:suitmedia_mobile_developer_intern_test/features/inserted_user_feature.dart';

class FirstScreenController extends GetxController {
  final TextEditingController _teName = TextEditingController();
  final TextEditingController _tePalindrom = TextEditingController();

  void checkButtonOnClick() {
    if (getPalindromeTF == '' || getPalindromeTF.length == 1) {
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.WARNING,
        animType: AnimType.BOTTOMSLIDE,
        desc: 'Please enter your input correctly',
        btnOkOnPress: () {},
      ).show();
      return;
    }

    final bool isPalindrome = PalindromeFeature.isPalindrom(getPalindromeTF);
    if (isPalindrome) {
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.SUCCES,
        animType: AnimType.BOTTOMSLIDE,
        desc: 'is Palindrom',
        btnOkOnPress: () {},
      ).show();
    } else {
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.ERROR,
        animType: AnimType.BOTTOMSLIDE,
        desc: 'not Palindrom',
        btnOkOnPress: () {},
      ).show();
    }
  }

  void nextButtonOnClick() {
    InsertedUserFeature.setUserName(getNameTF);
    Get.toNamed(AppRoutes.SECOND_SCREEN);
  }

  void onNameChanged(text) {
    _teName.text = text;
    update();
  }

  void onPalindromeChanged(text) {
    _tePalindrom.text = text;
    update();
  }

  String get getNameTF => _teName.text;

  String get getPalindromeTF => _tePalindrom.text;
}
