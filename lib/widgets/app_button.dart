import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget widget;
  const AppButton({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(13.0),
        border: Border.all(color: Colors.grey.shade900),
      ),
      child: widget,
    );
  }
}
