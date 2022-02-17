
import 'package:get/get.dart';
import 'package:interview/src/apimodule/api_service.dart';
import 'package:interview/src/model/product.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}