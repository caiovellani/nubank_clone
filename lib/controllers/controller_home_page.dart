import 'package:get/get_state_manager/get_state_manager.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 873.244,00';
  bool eyesValue = true;
  String creditCardValue = 'R\$ 50.000';

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
