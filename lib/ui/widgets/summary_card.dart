import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.number,
    required this.title,
  });

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '$number',
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
