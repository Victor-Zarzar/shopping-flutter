import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shopping_app_flutter/components/app_bar_home.dart';
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
              const AppBarHome(),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppBarThemeColor.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.search,
                      color: IconButtonColor.primaryColor,
                    ),
                    const SizedBox(width: 10,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
