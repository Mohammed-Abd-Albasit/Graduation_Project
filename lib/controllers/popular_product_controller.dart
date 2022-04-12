import 'package:get/get.dart';
import 'package:my_project/data/repository/popular_product_repo.dart';
import 'package:http/http.dart' as http;
import 'package:my_project/models/products_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got product");
      _popularProductList = [];
      setState(() {
        _popularProductList.addAll(Product.fromJson(response.body).products);
      });
      print(_popularProductList);
      update();
    } else {
      print("error");
    }
  }

  void setState(Null Function() param0) {}
}
