import 'package:coffee_app_ui/ui/home_page/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeTileLatte extends StatelessWidget {
  const CoffeeTileLatte({super.key});

  @override
  Widget build(BuildContext context) {
    final latte = context.read<HomePageViewModel>().latteList;
    return SizedBox(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: latte.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black54,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 170,
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          latte[index].image,
                          height: 170,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            latte[index].name,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            latte[index].title,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: '\$',
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' ${latte[index].price}',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              minimumSize:
                                  MaterialStateProperty.all(const Size(32, 32)),
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
