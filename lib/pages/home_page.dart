import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/components/app_bar_home.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';
import 'package:shopping_app_flutter/components/search_bar_app_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarHome(),
              SizedBox(
                height: 20,
              ),
              SearchBarAppHome(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

