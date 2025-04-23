import 'package:ecommerce_flutter_getx/controllers/categories_controller.dart';
import 'package:ecommerce_flutter_getx/src/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  final CategoriesController controller = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () {
                    controller.changeIndex(i);
                  },
                  child: Container(
                    width: ScreenSize.screenWidth / 6.3,
                    height: ScreenSize.screenWidth / 6.3,
                    decoration: BoxDecoration(
                      gradient:
                          controller.selectedIndex.value == i
                              ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor("#34C8E8"),
                                  HexColor("#4E4AF2"),
                                ],
                                stops: [0, 1],
                              )
                              : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor("#353F54"),
                                  HexColor("#222834"),
                                ],
                                stops: [0, 1],
                              ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/categories/$i.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
