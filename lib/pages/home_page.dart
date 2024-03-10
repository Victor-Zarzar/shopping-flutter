import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/components/app_bar_home.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';
import 'package:shopping_app_flutter/components/carrousel_app.dart';
import 'package:shopping_app_flutter/components/categories_app.dart';
import 'package:shopping_app_flutter/components/products_card.dart';
import 'package:shopping_app_flutter/components/search_bar_app_home.dart';
import 'package:shopping_app_flutter/models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarHome(),
                const SizedBox(
                  height: 20,
                ),
                const SearchBarAppHome(),
                const SizedBox(
                  height: 20,
                ),
                CarrouselPages(
                  onChange: (value) {
                    setState(() {
                      currentSlide = value;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Categories(),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Special For You",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("See all"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 350,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 165,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductsCard(
                        product: products[index],
                        index: index,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
