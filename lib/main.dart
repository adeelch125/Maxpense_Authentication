import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:max_pense/colors/app_colors.dart';
import 'package:max_pense/screens/welcome_screen.dart';

const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyA8uidmyVpN_zxVD4-8S1CmYn7vo1I9UeE",
  appId: "1:611264861514:android:cdb711c2fea3b77eb15db3",
  messagingSenderId: "611264861514",
  projectId: "authentication-c91f8",
  storageBucket: "authentication-c91f8.appspot.com", // Optional
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home:  WelcomeScreen()
    );
  }
}

