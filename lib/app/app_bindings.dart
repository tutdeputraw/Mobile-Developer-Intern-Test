import 'package:get/instance_manager.dart';
import 'package:suitmedia_mobile_developer_intern_test/features/selected_user_feature.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SelectedUserFeature());
  }
}
