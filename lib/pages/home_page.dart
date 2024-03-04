import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: IconButtonColor.primaryColor,
                      padding: const EdgeInsets.all(15),
                    ),
                    iconSize: 30,
                    icon: const Icon(Ionicons.grid_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: IconButtonColor.primaryColor,
                      padding: const EdgeInsets.all(15),
                    ),
                    iconSize: 30,
                    icon: const Icon(Ionicons.notifications_outline),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
