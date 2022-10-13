import 'package:coffee_app_ui/widgets/app_button.dart';
import 'package:coffee_app_ui/widgets/coffee_tile.dart';
import 'package:coffee_app_ui/widgets/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void coffeeTypeSelected() {}
  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        widget: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      // const AppButton(
                      //   widget: Image(
                      //     image: AssetImage('assets/images/avatar.jpg'),
                      //   ),
                      // ),
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
                const SizedBox(height: 25),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return CoffeeType(coffeeType: '',);
                    },
                  ),
                  // ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: [
                  //     CoffeeType(
                  //       coffeeType: 'Cappucino',
                  //       isSelected: true,
                  //       onTap: coffeeTypeSelected,
                  //     ),
                  //     CoffeeType(
                  //       coffeeType: 'Latte',
                  //       isSelected: false,
                  //       onTap: coffeeTypeSelected,
                  //     ),
                  //     CoffeeType(
                  //       coffeeType: 'Americano',
                  //       isSelected: false,
                  //       onTap: coffeeTypeSelected,
                  //     ),
                  //     CoffeeType(
                  //       coffeeType: 'Espresso',
                  //       isSelected: false,
                  //       onTap: coffeeTypeSelected,
                  //     ),
                  //     CoffeeType(
                  //       coffeeType: 'Iced Coffee',
                  //       isSelected: false,
                  //       onTap: coffeeTypeSelected,
                  //     ),
                  //   ],
                  // ),
                ),
                SizedBox(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CoffeeTile(),
                    ],
                  ),
                ),
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
