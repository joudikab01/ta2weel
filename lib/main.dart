import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecan_task/controller/bindings/special_dreams_binding.dart';
import 'package:wecan_task/view/screens/special_dreams.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'We can Task',
      theme: ThemeData(
        fontFamily: 'Bont',
      ),
      initialBinding: SpecialDreamsBinding(),

      home: const SpecialDreams(),

      debugShowCheckedModeBanner: false,
    );
  }
}
