import 'package:get/get.dart';

class HomeController extends GetxController {
  var status = "Online".obs;
  var followers = 50.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    ever(status, (_) {
      print('changed');
    });
    once(followers, (_) {
      print('Added');
    });
    super.onInit();
  }

  void updateStatus(String newStatus) {
    status.value = newStatus;
    update();
  }

  void updateFollowers() {
    followers += 1;
    update();
  }
}
