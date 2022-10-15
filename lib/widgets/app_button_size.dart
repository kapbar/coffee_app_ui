import 'package:flutter/material.dart';

class AppButtonSize extends StatelessWidget {
  final String size;
  final bool isSelected;
  const AppButtonSize({
    super.key,
    required this.size,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.7,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(13.0),
        border: Border.all(
          color: isSelected ? Colors.orange : Colors.black87,
          width: 1.5,
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
