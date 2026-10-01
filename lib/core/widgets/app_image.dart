import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// Rasm topilmasa ilova yiqilmaydi, placeholder chiqadi.
class AppImage extends StatelessWidget {
  final String path;
  final BoxFit fit;

  const AppImage(this.path, {super.key, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: fit,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (_, __, ___) => Container(
        color: AppColors.placeholder,
        alignment: Alignment.center,
        child: const Icon(Icons.chair_alt_rounded,
            color: AppColors.caption, size: 32),
      ),
    );
  }
}