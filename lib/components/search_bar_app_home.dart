import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';

class SearchBarAppHome extends StatelessWidget {
  const SearchBarAppHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppBarThemeColor.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding:
          const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          Icon(
            Ionicons.search,
            color: IconButtonColor.primaryColor,
          ),
          const SizedBox(
            width: 10,
          ),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: BackGround.secondaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.options_outline,
              color: IconButtonColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
