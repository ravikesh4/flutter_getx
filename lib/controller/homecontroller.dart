import 'package:get/get.dart';

class HomeController extends GetxController {
  bool status = true;

  void updateStatus(newStatus) {
    status = newStatus;
    update();
  }
}
