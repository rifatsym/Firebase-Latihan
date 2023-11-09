// import 'package:crud_firebase/app/routes/app_pages.dart';
// import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthController extends GetxController {
//   FirebaseAuth auth = FirebaseAuth.instance;

//   Stream<User?> get streamAuthStatus => auth.authStateChanges();

//   void logout() async {
//     await FirebaseAuth.instance.signOut();
//     Get.toNamed(Routes.LOGIN);
//   }

//   void login(String email, String password) async {
//     try {
//       await auth.signInWithEmailAndPassword(email: email, password: password);
//       Get.toNamed(Routes.HOME);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('user not found');
//       } else if (e.code == 'wrong-password') {
//         print('wrong password');
//       }
//       print(e.message);
//     }

//     void signup() async {
//       try {
//         await FirebaseAuth.instance
//             .createUserWithEmailAndPassword(email: email, password: password);
//         Get.offAllNamed(Routes.HOME);
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           print('Password too Weak');
//         } else if (e.code == 'email-already-in-use') {
//           print('acconunt has already exists fot that email');
//         }
//       } catch (e) {
//         print(e);
//       }
//     }
//   }
// }
