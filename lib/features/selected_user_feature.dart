import 'package:get/get_state_manager/get_state_manager.dart';

class SelectedUserFeature extends GetxController {
  String _selectedUserName = 'Selected User Name';

  void setUserName(String name) {
    _selectedUserName = name;
    update();
  }

  String get getSelectedUserName => _selectedUserName;
}
