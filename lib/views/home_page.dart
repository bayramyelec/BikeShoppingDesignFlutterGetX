import 'package:ecommerce_flutter_getx/src/colors.dart';
import 'package:ecommerce_flutter_getx/src/screen_size.dart';
import 'package:ecommerce_flutter_getx/widgets/categories_widget.dart';
import 'package:ecommerce_flutter_getx/widgets/header_widget.dart';
import 'package:ecommerce_flutter_getx/widgets/products_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildBody(),
      extendBodyBehindAppBar: true,
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        'Choose Your Bike',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        Container(
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
          child: Icon(Icons.search),
        ),
        SizedBox(width: 16),
      ],
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                _buildCategories(),
                const SizedBox(height: 20),
                _buildProducts(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return HeaderWidget();
  }

  Widget _buildCategories() {
    return CategoriesWidget();
  }

  Widget _buildProducts() {
    return ProductsWidget();
  }
}
