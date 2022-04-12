import 'package:get/get.dart';
import 'package:my_project/controllers/popular_product_controller.dart';
import 'package:my_project/data/api/api_client.dart';
import 'package:my_project/data/repository/popular_product_repo.dart';
import 'package:http/http.dart' as http;

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
// https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline
// https://reqres.in/api/users/2