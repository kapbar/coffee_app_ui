import 'package:coffee_app_ui/data/list_coffee.dart';
import 'package:coffee_app_ui/data/list_coffee_type.dart';
import 'package:coffee_app_ui/ui/coffee_details/coffee_details_screen.dart';
import 'package:coffee_app_ui/ui/coffee_details/coffee_details_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageViewModel extends ChangeNotifier {
  final listCoffeeType = CoffeeListData.coffeeTypeList;
  final cappucinoList = CoffeeList.cappucino;
  final latteList = CoffeeList.latte;
  final americanoList = CoffeeList.americano;
  final espressoList = CoffeeList.espresso;
  final icedCoffeeList = CoffeeList.icedCoffee;

  int _selectedCoffee = 0;
  int get selectedCoffee => _selectedCoffee;

  int _selectedBottomNavigation = 0;
  int get selectedBottomNavigation => _selectedBottomNavigation;

  void coffeeTypeSelected(int index) {
    if (_selectedCoffee == index) return;
    for (var i in listCoffeeType) {
      i[1] = false;
    }
    listCoffeeType[index][1] = true;
    _selectedCoffee = index;
    notifyListeners();
  }

  void bottomNavSelected(int index) {
    if (index == _selectedBottomNavigation) return;
    if (index == 0) {
      _selectedBottomNavigation = index;
    } else if (index == 1) {
      _selectedBottomNavigation = index;
    } else if (index == 2) {
      _selectedBottomNavigation = index;
    } else if (index == 3) {
      _selectedBottomNavigation = index;
    }
    notifyListeners();
  }

  void onCoffeeTap(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
          create: (BuildContext context) {
            return CoffeeDetailsScreenModel(coffee: cappucinoList[index]);
          },
          child: const CoffeeDetailsScreen(),
        ),
        settings: RouteSettings(arguments: cappucinoList[index]),
      ),
    );
  }
}
