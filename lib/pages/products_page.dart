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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductsAppBar(),
          ],
        ),
      ),
    );
  }
}