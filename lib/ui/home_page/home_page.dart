import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_americano.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_espresso.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_iced_coffee.dart';
import 'package:coffee_app_ui/ui/home_page/coffe_tile/coffee_tile_latte.dart';
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
    final selectedCoffee =
        context.select((HomePageViewModel m) => m.selectedCoffee);
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
                      ),
                      AppButton(
                        widget: ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(13),
                          child: const Image(
                            image: AssetImage('assets/images/avatar.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Find the best coffee for you',
                  style: GoogleFonts.bebasNeue(fontSize: 56),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: 'Find Your Coffee...',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.orange),
                      borderRadius: BorderRadius.circular(15.0),
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
