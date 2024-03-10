import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';
import 'package:shopping_app_flutter/components/products_app_bar.dart';
import 'package:shopping_app_flutter/models/product.dart';

class ProductsPage extends StatefulWidget {
  final Product product;
  const ProductsPage({super.key, required this.product});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductsAppBar(),
            SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount: 5,
                onPageChanged: (value) => setState(() {
                  currentImage = value;
                }),
                itemBuilder: (context, index) {
                  return Image.asset(widget.product.image);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: PageCarrousel.primaryColor,
                      ),
                      color: currentImage == index
                          ? PageCarrousel.primaryColor
                          : PageCarrousel.secondaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}