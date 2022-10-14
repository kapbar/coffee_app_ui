import 'package:coffee_app_ui/ui/coffee_details/coffee_details_screen_model.dart';
import 'package:coffee_app_ui/widgets/app_button_size.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CoffeeDetailsScreenModel>();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              model.coffee.image,
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Description',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text(
                  'A cappuccino is a coffee-based drink made primarily from espresso and milk...',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Size',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => model.coffeeSizeSelected(index),
                          child: AppButtonSize(
                            size: model.coffeeSizeList[index][0],
                            isSelected: model.coffeeSizeList[index][1],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 2),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Prise',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 3),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: '\$ ',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 20),
                                ),
                                TextSpan(
                                  text: model.coffee.price,
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 85,
                            vertical: 18,
                          ),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
