// ignore_for_file: unused_import

import 'package:crud_firebase/app/controllers/auth_controller.dart';
import 'package:crud_firebase/app/modules/home/views/home_view.dart';
import 'package:crud_firebase/app/modules/login/views/login_view.dart';
import 'package:crud_firebase/app/routes/app_pages.dart';
import 'package:crud_firebase/app/utils/Loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        print(snapshot.data);
        if (snapshot.connectionState == ConnectionState.active) {
          return GetMaterialApp(
            title: "aplication",
            // initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
            getPages: AppPages.routes,
            home: snapshot.data != null ? HomeView() : LoginView(),
          );
        }
        return LoadingView();
      },
    );
  }
}
