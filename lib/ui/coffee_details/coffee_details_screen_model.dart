import 'package:coffee_app_ui/data/list_coffee.dart';
import 'package:coffee_app_ui/data/list_coffee_type.dart';
import 'package:flutter/widgets.dart';

class CoffeeDetailsScreenModel extends ChangeNotifier {
  CoffeeDetailsScreenModel({required this.coffee});
  final CoffeeData coffee;
  final coffeeSizeList = CoffeeListData.coffeeSizeList;
  int _selectedSize = 0;
  bool isFavorite = false;

  void coffeeSizeSelected(int index) {
    if (_selectedSize == index) return;
    for (var i in coffeeSizeList) {
      i[1] = false;
    }
    coffeeSizeList[index][1] = true;
    _selectedSize = index;
    notifyListeners();
  }

  void coffeeToggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
