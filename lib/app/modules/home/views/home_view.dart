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
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Icon(
              Icons.notifications_none,
              size: 40,
              color: Colors.white,
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
