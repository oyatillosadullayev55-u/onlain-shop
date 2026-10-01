import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../models/furniture_item.dart';
import '../../../core/widgets/app_image.dart';

class ChairTile extends StatelessWidget {
  final FurnitureItem item;

  const ChairTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: AppColors.surface,
        child: Column(
          children: [
            Expanded(child: AppImage(item.image)),
            Container(
              height: 40,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.caption,
                  height: 1.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}