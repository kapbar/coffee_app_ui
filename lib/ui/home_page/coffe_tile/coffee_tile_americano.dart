import 'package:coffee_app_ui/ui/home_page/home_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeTileAmericano extends StatelessWidget {
  const CoffeeTileAmericano({super.key});

  @override
  Widget build(BuildContext context) {
    final americano = context.read<HomePageViewModel>().americanoList;
    return SizedBox(
      height: 310,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: americano.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
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
                        americano[index].image,
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
                          americano[index].name,
                          style: const TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          americano[index].title,
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
                                text: ' ${americano[index].price}',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            minimumSize:
                                MaterialStateProperty.all(const Size(32, 32)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
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
          );
        },
      ),
    );
  }
}
