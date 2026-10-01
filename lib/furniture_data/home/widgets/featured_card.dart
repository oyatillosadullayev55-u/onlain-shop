import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../models/furniture_item.dart';
import '../../../core/widgets/app_image.dart';

class FeaturedCard extends StatelessWidget {
  final FurnitureItem item;

  const FeaturedCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Expanded(child: AppImage(item.image)),
          Container(
            color: AppColors.surface,
            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '\$${item.price?.toStringAsFixed(1)}',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${item.name} savatchaga qo'shildi"),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_shopping_cart_rounded,
                      color: AppColors.primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}