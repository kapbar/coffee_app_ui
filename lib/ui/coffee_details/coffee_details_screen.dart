import 'dart:ui';

import 'package:coffee_app_ui/ui/coffee_details/coffee_details_screen_model.dart';
import 'package:coffee_app_ui/widgets/app_button.dart';
import 'package:coffee_app_ui/widgets/app_button_size.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<CoffeeDetailsScreenModel>();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(37),
                  child: Image.asset(
                    model.coffee.image,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.59,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: AppButton(
                    widget: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.grey.shade700,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: AppButton(
                    widget: Icon(
                      Icons.favorite_rounded,
                      color:
                          model.isFavorite ? Colors.red : Colors.grey.shade700,
                    ),
                    onTap: model.coffeeToggleFavorite,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 9.0, sigmaY: 9.0),
                      child: Container(
                        padding: const EdgeInsets.all(25),
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.45),
                          borderRadius: BorderRadius.circular(37.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model.coffee.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  model.coffee.title,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star_rounded,
                                      color: Colors.orange,
                                    ),
                                    const SizedBox(width: 10),
                                    RichText(
                                      text: const TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '4.5',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' (6.986)',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    width: 150,
                                    child: GridView.count(
                                      crossAxisSpacing: 10,
                                      crossAxisCount: 2,
                                      childAspectRatio: 1.2,
                                      padding: const EdgeInsets.all(0),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black87,
                                              borderRadius:
                                                  BorderRadius.circular(13.0)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(
                                                Icons.coffee_rounded,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Text(
                                                'Coffee',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black87,
                                              borderRadius:
                                                  BorderRadius.circular(13.0)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(
                                                Icons.water_drop_rounded,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                              Text(
                                                'Milk',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    width: 150,
                                    child: GridView.count(
                                      crossAxisCount: 1,
                                      childAspectRatio: 3.5,
                                      padding: const EdgeInsets.only(top: 5),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black87,
                                              borderRadius:
                                                  BorderRadius.circular(13.0)),
                                          child: const Center(
                                            child: Text(
                                              'Medium Roasted',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 12),
                  const ReadMoreText(
                    'A cappuccino is a coffee-based drink made primarily from espresso and milk. It consists of one-third espresso, one-third heated milk and generally served in a 6 ti 8 - ounce cup.',
                    trimLines: 2,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    lessStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                    ),
                    moreStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Size',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 13),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: model.coffeeSizeList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () => model.coffeeSizeSelected(index),
                          child: AppButtonSize(
                            size: model.coffeeSizeList[index][0],
                            isSelected: model.coffeeSizeList[index][1],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 22),
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
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
