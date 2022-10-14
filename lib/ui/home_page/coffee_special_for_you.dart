import 'package:flutter/material.dart';

class CoffeeSpecialForYou extends StatelessWidget {
  const CoffeeSpecialForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: () {},
      child: Container(
        height: 194,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black54,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 170,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/iced_coffee.jpg',
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '5 Coffee Beans You Must Try!',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Ice Coffee',
                    style: TextStyle(fontSize: 25, color: Colors.orange),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'With Chocolate',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 20),
                            ),
                            TextSpan(
                              text: ' 3.66',
                              style: TextStyle(fontSize: 20),
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
                              borderRadius: BorderRadius.circular(10),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
