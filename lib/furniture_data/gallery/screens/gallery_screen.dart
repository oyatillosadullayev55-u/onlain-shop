import 'package:flutter/material.dart';
import '../../../data/furniture_data.dart';
import '../../../core/widgets/app_image.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  Widget _title(String text) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 18, 16, 8),
    child: Text(
      text,
      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final chairs = FurnitureData.chairs;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Gallery')),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          // Gallery (gorizontal)
          SizedBox(
            height: 190,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: FurnitureData.featured.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (_, i) => ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(
                  width: width - 48,
                  child: AppImage(FurnitureData.featured[i].image),
                ),
              ),
            ),
          ),

          // Grid
          _title('Grid'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: chairs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemBuilder: (_, i) => ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: AppImage(chairs[i].image),
              ),
            ),
          ),

          // List
          _title('List'),
          for (final item in FurnitureData.office)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(height: 95, child: AppImage(item.image)),
              ),
            ),
        ],
      ),
    );
  }
}