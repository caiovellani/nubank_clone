import 'package:get/get_state_manager/get_state_manager.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 873.244,00';
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
