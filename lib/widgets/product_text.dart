import 'package:flutter/material.dart';

class ProductText extends StatelessWidget {
  final String txt;

  const ProductText({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
