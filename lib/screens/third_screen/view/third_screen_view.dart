import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:suitmedia_mobile_developer_intern_test/models/user.dart';
import 'package:suitmedia_mobile_developer_intern_test/screens/third_screen/controller/third_screen_controller.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/fonts.dart';
import 'package:suitmedia_mobile_developer_intern_test/widgets/appbar_app.dart';

class ThirdScreenView extends GetView<ThirdScreenController> {
  const ThirdScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ThirdScreenController());
    return Scaffold(
      appBar: AppBarApp(
        title: 'Third Screen',
        backOnCLick: () => Get.back(),
      ),
      body: controller.obx(
        (_) => SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          onRefresh: controller.onRefresh,
          onLoading: controller.onLoadNextData,
          header: const MaterialClassicHeader(),
          controller: controller.refreshController,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            itemBuilder: (context, index) => _card(controller.data.data[index]),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: controller.data.data.length,
          ),
        ),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }

  Widget _card(UserData data) {
    return InkWell(
      onTap: () => controller.cardOnClick(data),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 5,
        ),
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(data.avatar),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '${data.firstName} ${data.lastName}',
                    style: FontApp.CARD_TITLE,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    data.email,
                    style: FontApp.CARD_SUBTITLE,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
