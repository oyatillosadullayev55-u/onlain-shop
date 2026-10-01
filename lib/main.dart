import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'furniture_data/home/screens/home_screen.dart';

void main() => runApp(const FurnitureApp());

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}