import 'package:flutter/material.dart';
import '../../../data/furniture_data.dart';
import '../../../core/widgets/app_image.dart';
import '../widgets/chair_tile.dart';
import '../widgets/featured_card.dart';
import '../widgets/page_dots.dart';
import '../widgets/section_header.dart';
import '../../gallery/screens/gallery_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController(viewportFraction: 0.94);
  int _page = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openGallery() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const GalleryScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SectionHeader(title: 'Furniture', large: true),
            ),

            // Karusel
            SliverToBoxAdapter(
              child: SizedBox(
                height: 215,
                child: PageView.builder(
                  controller: _controller,
                  padEnds: false,
                  itemCount: FurnitureData.featured.length,
                  onPageChanged: (i) => setState(() => _page = i),
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(left: i == 0 ? 16 : 0, right: 8),
                    child: FeaturedCard(item: FurnitureData.featured[i]),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: PageDots(
                  count: FurnitureData.featured.length,
                  current: _page,
                ),
              ),
            ),

            // Styled Chairs
            SliverToBoxAdapter(
              child: SectionHeader(
                title: 'Styled Chairs',
                onViewAll: _openGallery,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid.builder(
                itemCount: FurnitureData.chairs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.74,
                ),
                itemBuilder: (_, i) => ChairTile(item: FurnitureData.chairs[i]),
              ),
            ),

            // Office Furniture
            const SliverToBoxAdapter(
              child: SectionHeader(title: 'Office Furniture'),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              sliver: SliverList.separated(
                itemCount: FurnitureData.office.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (_, i) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 140,
                    child: AppImage(FurnitureData.office[i].image),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}