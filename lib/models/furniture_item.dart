class FurnitureItem {
  final String name;
  final String image;
  final double? price;

  const FurnitureItem({
    required this.name,
    required this.image,
    this.price,
  });
}