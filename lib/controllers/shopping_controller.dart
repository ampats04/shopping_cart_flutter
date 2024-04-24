import 'package:ardu_illuminate/models/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    var productResult = [
      Product(
        id: 1,
        productName: 'Test',
        productDescription: 'Lorum Ipsum suck my cock',
        price: 9.99,
      )
    ];

    products.value = productResult;
  }
}
