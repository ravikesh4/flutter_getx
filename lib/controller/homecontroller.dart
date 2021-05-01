import 'package:get/get.dart';

class HomeController extends GetxController {
  String status = "online";

  void updateStatus(newStatus) {
    status = newStatus;
    update();
  }
}
