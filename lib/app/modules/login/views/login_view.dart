import 'package:crud_firebase/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final emailC = TextEditingController();
  final passC = TextEditingController();

  final authC = Get.find<AuthController>();
  final LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBF2FF),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset(
                  'asset/Login_Image.png',
                  width: 320,
                  height: 220,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 6,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: emailC,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.person, color: Color(0xFF8332A6)),
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                      Divider(),
                      Obx(() {
                        return TextField(
                          obscureText: controller.isObscure.value,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.key_off,
                              color: Color(0xFF8332A6),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.isObscure.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xFF8332A6),
                              ),
                              onPressed: () {
                                controller.toggleVisibility();
                              },
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8332A6),
                        padding: EdgeInsets.symmetric(
                            horizontal: 156, vertical: 15)),
                    onPressed: () => authC.login(emailC.text, passC.text),
                    child: Text("Login")),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Color(0xFF8332A6)),
                    child: Text("Doesn't Have Account? Register Here")),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        foregroundColor: Color(0xFF8332A6)),
                    child: Text("Forgot Password")),
              ],
            ),
          ),
        ));
  }
}
