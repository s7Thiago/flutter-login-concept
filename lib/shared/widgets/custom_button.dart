import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    this.width = 90,
    this.height = 40,
    this.text = "",
    this.color = Colors.lightBlue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            alignment: Alignment.center,
            width: width,
            height: height,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
