import 'package:flutter/material.dart';
import 'package:london/Colors_app.dart';
import 'package:london/pages/claudia.dart';
import 'package:london/pages/home.dart';

class Bar extends StatelessWidget {

  const Bar({super.key, required this.isHome});

  final bool isHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.barColor,
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ),
              );
            },
            child: const Text(
              "London",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text("David & Claudia", style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return isHome ? Claudia() : Home();
                  },
                ),
              );
            },
            child: Text(
              isHome ? "Second Page" : "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
