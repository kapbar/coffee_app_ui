import 'package:coffee_app_ui/ui/home_page/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomePageViewModel>();
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.listCoffeeType.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            onTap: () => model.coffeeTypeSelected(index),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  model.listCoffeeType[index][0],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: model.listCoffeeType[index][1]
                        ? Colors.orange
                        : Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
