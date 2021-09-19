import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var division = 'dhaka'.obs;
  increment() {
    count++;
  }

  decrement() {
    if (count <= 0) {
      Get.snackbar("Counter", "You can`t buy less than 0");
    } else {
      count--;
    }
  }

  divisionItem(String values) {
    division.value = values;
    
  }
}
