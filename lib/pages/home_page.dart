import 'package:flutter/material.dart';
import 'package:shopping_app_flutter/components/app_bar_home.dart';
import 'package:shopping_app_flutter/components/app_theme.dart';
import 'package:shopping_app_flutter/components/carrousel_app.dart';
import 'package:shopping_app_flutter/components/search_bar_app_home.dart';

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
                  currentSlide: currentSlide),
            ],
          ),
        ),
      ),
    );
  }
}
