import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/pages/clothes/categories.dart';
import 'package:my_project/pages/clothes/product_details.dart';
import 'package:my_project/pages/home/main_page.dart';
import 'controllers/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;

main() async {
  // GlobalBindings().dependencies();
  WidgetsFlutterBinding.ensureInitialized();

  /// make sure the dependencies are loaded correctly
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
