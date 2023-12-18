import 'package:flutter/material.dart';

class CustomBottomCard extends StatelessWidget {
  final Icon icon;
  final String str;
  const CustomBottomCard({super.key, required this.icon, required this.str});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: Color.fromRGBO(196, 221, 228, 0.984)),
      child: Row(
        children: [
          icon,
          Text(str),
        ],
      ),
    );
  }
}
