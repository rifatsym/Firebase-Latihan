import 'package:get/get.dart';

class LoginController extends GetxController {
   var isObscure = true.obs; 

  void toggleVisibility() {
    isObscure.value = !isObscure.value; 
  }
}
