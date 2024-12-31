import 'package:flutter/material.dart';

class appBarwidget extends StatelessWidget {
  const appBarwidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
        const Spacer(),
       const Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        )
      ],
    );
  }
}
