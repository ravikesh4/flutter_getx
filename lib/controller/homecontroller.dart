import 'package:get/get.dart';

class HomeController extends GetxController {
  bool status = true;
  int followers = 50;

  void updateStatus(newStatus) {
    status = newStatus;
    update(['status']);
  }

  void updateFollowers() {
    followers += 1;
    update(['follower']);
  }
}
