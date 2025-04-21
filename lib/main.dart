import 'package:ecommerce_flutter_getx/routes/app_pages.dart';
import 'package:ecommerce_flutter_getx/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Bike Shopping',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: AppRoutes.home,
      getPages: AppPages.getPages,
    );
  }
}
