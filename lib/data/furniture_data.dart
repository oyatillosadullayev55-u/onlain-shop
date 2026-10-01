import '../models/furniture_item.dart';

class FurnitureData {
  FurnitureData._();

  static const _sofa = 'assets/images/img_1.png';        // to'q sariq divan
  static const _blackChair = 'assets/images/img_2.png';  // qora stul
  static const _whiteChair = 'assets/images/img_3.png';  // oq charm stul
  static const _decor = 'assets/images/img_4.png';       // javon va o'simliklar
  static const _grayChairs = 'assets/images/img_5.png';  // kulrang mato stullar
  static const _diningSet = 'assets/images/img_6.png';   // stol va ikki stul

  static const featured = [
    FurnitureItem(name: 'Orange Sofa', image: _sofa, price: 120.0),
    FurnitureItem(name: 'Dining Set', image: _diningSet, price: 240.0),
    FurnitureItem(name: 'Gray Chairs', image: _grayChairs, price: 80.0),
    FurnitureItem(name: 'White Chair', image: _whiteChair, price: 95.0),
    FurnitureItem(name: 'Black Chair', image: _blackChair, price: 60.0),
  ];

  static const chairs = [
    FurnitureItem(name: 'Dark color chair', image: _blackChair),
    FurnitureItem(name: 'White leather chair', image: _whiteChair),
    FurnitureItem(name: 'Beige wood chair', image: _diningSet),
    FurnitureItem(name: 'Fabric gray chair', image: _grayChairs),
    FurnitureItem(name: 'Two chairs and table', image: _diningSet),
  ];

  static const office = [
    FurnitureItem(name: 'Office Furniture', image: _decor),
    FurnitureItem(name: 'Office Chair', image: _sofa),
  ];
}