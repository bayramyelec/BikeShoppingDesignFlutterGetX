import 'package:ecommerce_flutter_getx/routes/app_routes.dart';
import 'package:ecommerce_flutter_getx/views/cart_page.dart';
import 'package:ecommerce_flutter_getx/views/home_page.dart';
import 'package:ecommerce_flutter_getx/views/product_detail_page.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final getPages = [
    GetPage(name: AppRoutes.home, page: () => HomePage()),
    GetPage(name: AppRoutes.cart, page: () => CartPage()),
    GetPage(name: AppRoutes.productDetail, page: () => ProductDetailPage()),
  ];
}
