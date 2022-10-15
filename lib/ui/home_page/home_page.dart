import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_americano.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_espresso.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_iced_coffee.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_latte.dart';
import 'package:coffee_app_ui/ui/home_page/coffee_special_for_you.dart';
import 'package:coffee_app_ui/ui/home_page/home_page_model.dart';
import 'package:coffee_app_ui/widgets/app_button.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_cappucino.dart';
import 'package:coffee_app_ui/ui/home_page/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bottomNavSelected =
        context.read<HomePageViewModel>().bottomNavSelected;
    final selectedCoffee =
        context.select((HomePageViewModel m) => m.selectedCoffee);
    final selectedBottomNavigation =
        context.select((HomePageViewModel m) => m.selectedBottomNavigation);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        widget: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.grey.shade700,
                        ),
                        onTap: () {},
                      ),
                      AppButton(
                        widget: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(13),
                          child: const Image(
                            image: AssetImage('assets/images/avatar.jpg'),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Text(
                  'Find the best coffee for you',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 50, color: Colors.white),
                ),
                const SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: 'Find Your Coffee...',
                    hintStyle: const TextStyle(fontSize: 15),
                    fillColor: Colors.black54,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const CoffeeType(),
                const SizedBox(height: 10),
                if (selectedCoffee == 0) const CoffeeTileCappucino(),
                if (selectedCoffee == 1) const CoffeeTileLatte(),
                if (selectedCoffee == 2) const CoffeeTileAmericano(),
                if (selectedCoffee == 3) const CoffeeTileEspresso(),
                if (selectedCoffee == 4) const CoffeeTileIcedCoffee(),
                const SizedBox(height: 30),
                const Text(
                  'Special for you',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(height: 15),
                const CoffeeSpecialForYou(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => bottomNavSelected(index),
        currentIndex: selectedBottomNavigation,
        selectedIconTheme: const IconThemeData(color: Colors.orange),
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade600),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}
