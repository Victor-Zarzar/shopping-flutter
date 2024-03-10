import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';
import 'package:shopping_app_flutter/models/product.dart';

class ProductsCard extends StatelessWidget {
  final Product product;
  final int index;
  const ProductsCard({super.key, required this.product, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ContainerColor.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                products[index].image,
                width: 120,
                height: 105,
              ),
              Text(
                products[index].title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "\$${products[index].price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    children: List.generate(
                      products[index].colors.length,
                      (cindex) => Container(
                        height: 15,
                        width: 15,
                        margin: const EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          color: products[index].colors[cindex],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: CardColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Icon(
                Ionicons.heart_outline,
                color: CardColors.secondaryColor,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
