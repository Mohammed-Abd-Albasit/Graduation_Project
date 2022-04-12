import 'package:get/get.dart';
import 'package:my_project/data/api/api_client.dart';
import 'package:http/http.dart' as http;

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("/api/v1/products/popular");
  }
}
// https://mvs.bslmeiyu.com/api/v1/products/popular