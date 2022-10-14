import 'package:coffee_app_ui/data/list_coffee.dart';
import 'package:coffee_app_ui/data/list_coffee_type.dart';
import 'package:flutter/cupertino.dart';

class HomePageViewModel extends ChangeNotifier {
  final listCoffeeType = CoffeeTypeList.coffeeType;
  final cappucinoList = CoffeeList.cappucino;
  final latteList = CoffeeList.latte;
  final americanoList = CoffeeList.americano;
  final espressoList = CoffeeList.espresso;
  final icedCoffeeList = CoffeeList.icedCoffee;
  int _selectedCoffee = 0;
  int get selectedCoffee => _selectedCoffee;

  void coffeeTypeSelected(int index) {
    if (_selectedCoffee == index) return;
    for (var i in listCoffeeType) {
      i[1] = false;
    }
    listCoffeeType[index][1] = true;
    _selectedCoffee = index;
    notifyListeners();
  }
}
