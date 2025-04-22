import 'dart:ui';
import 'package:ecommerce_flutter_getx/models/product_model.dart';
import 'package:ecommerce_flutter_getx/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsWidget extends StatelessWidget {
  ProductsWidget({super.key});

  final List<ProductModel> _list = [
    ProductModel(
      name: 'PEUGEOT - LR01 0111',
      price: '₺ 1,999.99',
      categories: 'Road Bike',
      imagePath: 'assets/images/0.png',
      desc:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Consectetur adipiscing elit quisque faucibus ex sapien vitae. Ex sapien vitae pellentesque sem placerat in id. Placerat in id cursus mi pretium tellus duis. Pretium tellus duis convallis tempus leo eu aenean.',
    ),
    ProductModel(
      name: 'PILOT - CHROMOLY 520',
      price: '₺ 3,999.99',
      categories: 'Road Bike',
      imagePath: 'assets/images/1.png',
      desc:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Consectetur adipiscing elit quisque faucibus ex sapien vitae. Ex sapien vitae pellentesque sem placerat in id. Placerat in id cursus mi pretium tellus duis. Pretium tellus duis convallis tempus leo eu aenean.',
    ),
    ProductModel(
      name: 'SMITH - TRADE 0222',
      price: '₺ 120',
      categories: 'Road Helmet',
      imagePath: 'assets/images/2.png',
      desc:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Consectetur adipiscing elit quisque faucibus ex sapien vitae. Ex sapien vitae pellentesque sem placerat in id. Placerat in id cursus mi pretium tellus duis. Pretium tellus duis convallis tempus leo eu aenean.',
    ),
    ProductModel(
      name: 'PILOT - Electric Bike A233',
      price: '₺ 5,999.99',
      categories: 'Road Bike',
      imagePath: 'assets/images/3.png',
      desc:
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Consectetur adipiscing elit quisque faucibus ex sapien vitae. Ex sapien vitae pellentesque sem placerat in id. Placerat in id cursus mi pretium tellus duis. Pretium tellus duis convallis tempus leo eu aenean.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1 / 1.3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < _list.length; i++)
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.productDetail, arguments: _list[i]);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 500, sigmaY: 500),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(150),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/$i.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _list[i].categories,
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                _list[i].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                _list[i].price,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
