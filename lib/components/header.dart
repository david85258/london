import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[100],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            "London Culture",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ClipRRect(child: Image.asset("lib/images/londres-nuit.jpeg", height: 350, ), borderRadius: BorderRadius.circular(30),),
        ],
      ),
    );
  }
}
