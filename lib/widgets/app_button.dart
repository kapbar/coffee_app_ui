import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback onTap;
  const AppButton({super.key, required this.widget, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(13.0),
          border: Border.all(color: Colors.black54, width: 1.5),
        ),
        child: widget,
      ),
    );
  }
}
