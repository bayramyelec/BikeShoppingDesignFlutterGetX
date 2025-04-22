import 'package:ecommerce_flutter_getx/src/colors.dart';
import 'package:ecommerce_flutter_getx/src/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_getx/models/product_model.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildBody(),
      extendBodyBehindAppBar: true,
      bottomSheet: _buildCard(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: Row(
        children: [
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [HexColor("#34C8E8"), HexColor("#4E4AF2")],
                  stops: [0, 1],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.chevron_left),
            ),
          ),
        ],
      ),
      title: Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Container(color: HexColor(mainColor)),
        Positioned(
          bottom: 0,
          child: Image.asset(
            'assets/images/BG.png',
            width: ScreenSize.screenWidth,
            fit: BoxFit.fill,
          ),
        ),
        Positioned.fill(
          top: ScreenSize.appbarHeight * 0.5,
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [_buildImage(), _buildBox()],
          ),
        ),
      ],
    );
  }

  Widget _buildImage() {
    return SizedBox(
      width: double.infinity,
      height: ScreenSize.screenWidth / 1.5,
      child: Image.asset(product.imagePath),
    );
  }

  Widget _buildBox() {
    return Container(
      width: double.infinity,
      height: 700,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [HexColor("#353F54"), HexColor("#222834")],
          stops: [0, 1],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(children: [_buildTitle(), _buildDesc()]),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          product.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildDesc() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          textAlign: TextAlign.justify,
          product.desc,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white54,
          ),
        ),
      ),
    );
  }

  Widget _buildCard() {
    return Container(
      width: double.infinity,
      height: ScreenSize.screenWidth * 0.25,
      decoration: BoxDecoration(
        color: HexColor(mainColor),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            product.price,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
