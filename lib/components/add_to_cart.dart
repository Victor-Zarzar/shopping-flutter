import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';

class AddtoCart extends StatelessWidget {
  final Function() onAdd;
  final Function() onRemove;
  const AddtoCart({
    super.key,
    required this.currentNumber, required this.onAdd, required this.onRemove,
  });

  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: ButtonCardColor.primaryColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: IconButtonColor.primaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: onRemove,
                    icon: Icon(
                      Ionicons.remove_outline,
                      size: 18,
                      color: IconButtonColor.secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentNumber.toString(),
                    style: TextStyle(
                      color: TextColors.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: onAdd,
                    icon: Icon(
                      Ionicons.add_outline,
                      size: 18,
                      color: IconButtonColor.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: CardColors.primaryColor,
                borderRadius: BorderRadius.circular(60),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Add to Cart",
                style: TextStyle(
                    color: TextColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
