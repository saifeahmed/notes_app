import 'package:flutter/material.dart';

class CustomeIcon extends StatelessWidget {
  const CustomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
