import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gojek_clone_ui/presentation/bindings/main_binding.dart';
import 'package:gojek_clone_ui/presentation/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'SF Pro Display',
      ),
      initialBinding: MainBinding(),
      home: const MainPage(),
    );
  }
}
