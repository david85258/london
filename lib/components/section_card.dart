import 'package:flutter/material.dart';
import 'package:london/Colors_app.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.title,
    this.content = '',
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsApp.cardColor,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorsApp.titleColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(fontSize: 16, color: ColorsApp.textColor),
          ),
        ],
      ),
    );
  }
}
