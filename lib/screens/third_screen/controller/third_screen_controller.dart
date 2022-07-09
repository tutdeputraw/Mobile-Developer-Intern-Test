import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:suitmedia_mobile_developer_intern_test/adapter/http_adapter.dart';
import 'package:suitmedia_mobile_developer_intern_test/features/selected_user_feature.dart';
import 'package:suitmedia_mobile_developer_intern_test/models/user.dart';

class ThirdScreenController extends GetxController with StateMixin {
  late User data;
  int currentPage = 1;
  RefreshController refreshController = RefreshController(
    initialRefresh: false,
  );

  @override
  void onReady() async {
    super.onReady();

    final Response? result = await _fetchUser();
    if (result == null) {
      change(data, status: RxStatus.error('something bad happened'));
      return;
    }

    data = userFromJson(result.body);
    refreshController.refreshCompleted();
    change(null, status: RxStatus.success());
    update();
  }

  void cardOnClick(UserData data) {
    final selectedUser = Get.find<SelectedUserFeature>();
    selectedUser.setUserName('${data.firstName} ${data.lastName}');
  }

  Future<void> onRefresh() async {
    currentPage = 1;
    final Response? result = await _fetchUser();
    if (result == null) {
      change(data, status: RxStatus.error('something bad happened'));
      return;
    }

    data = userFromJson(result.body);
    refreshController.refreshCompleted();
    change(null, status: RxStatus.success());
    update();
  }

  Future<void> onLoadNextData() async {
    currentPage += 1;
    final Response? response = await _fetchUser();
    if (response == null) {
      change(data, status: RxStatus.error('something bad happened'));
      return;
    }

    User newData = userFromJson(response.body);
    data.data.addAll(newData.data);
    data.page = newData.page;
    refreshController.loadComplete();
    update();
  }

  Future<Response?> _fetchUser() async {
    final url = 'https://reqres.in/api/users?page=$currentPage&per_page=10';
    try {
      final Response? response = await HttpAdapter.get(url);
      return response;
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
      return null;
    }
  }
}
