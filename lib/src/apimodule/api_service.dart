import 'package:http/http.dart' as http;
import 'package:interview/src/model/product.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response =
        await client.get(Uri.parse('https://api.npoint.io/a907f54f4d95e9e31711'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}
