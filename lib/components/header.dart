import 'package:flutter/material.dart';
import 'package:london/Colors_app.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.barColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "London Culture",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: ColorsApp.titleColor2),
          ),
          const SizedBox(height: 10),
          ClipRRect(borderRadius: BorderRadius.circular(30), child: Image.asset("lib/images/londres-nuit.jpeg", height: 350),),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
