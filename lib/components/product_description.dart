import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';

class ProductDescription extends StatelessWidget {
  final String text;
  const ProductDescription({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CardColors.primaryColor,
          ),
          alignment: Alignment.center,
          child: Text(
            "Description",
            style: TextStyle(
              color: TextColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            color: TextColors.thirdColor,
          ),
        ),
      ],
    );
  }
}
