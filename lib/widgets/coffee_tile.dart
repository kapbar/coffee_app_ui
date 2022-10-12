import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/latte.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                children: [
                  const Text(
                    'Latte',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$4.00'),
                  IconButton(
                    color: Colors.orange,
                    onPressed: () {},
                    icon: const Icon(Icons.add),
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
