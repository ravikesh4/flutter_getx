import 'package:get/get.dart';

class HomeController extends GetxController {
  var status = "Online".obs;
  var followers = 50.obs;

  void updateStatus(String newStatus) {
    status.value = newStatus;
    update();
  }

  void updateFollowers() {
    followers += 1;
    update();
  }
}
