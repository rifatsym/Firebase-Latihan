import 'package:crud_firebase/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFBF2C98), Color(0xFF8332A6)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70, right: 11),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.notifications_none,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 11),
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () => authC.logout(), child: Text("logout"))
          ],
        ),
      ),
    );
  }
}
