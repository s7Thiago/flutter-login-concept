import 'package:flutter/material.dart';

extension CustomWidget on Widget {
  Widget putBackButton() {
    return Stack(
      alignment: Alignment.center,
      children: [
        this,
        const Positioned(
          top: 10,
          left: 10,
          child: BackButton(),
        ),
      ],
    );
  }

  putFloatingHero({
    required tag,
    required context,
    title = '',
    Color titleColor = Colors.black87,
    EdgeInsetsGeometry? margin =
        const EdgeInsets.symmetric(horizontal: 30.0, vertical: 120.0),
  }) {
    return Container(
      margin: margin,
      child: Hero(
        tag: tag,
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            children: [
              this,
              Positioned(
                top: 10,
                left: 20,
                child: Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
