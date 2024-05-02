import 'package:flutter/material.dart';

class SearchTripsPage extends StatelessWidget {
  const SearchTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.blue[900],
  title: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Search',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            const Icon(Icons.search, color: Colors.grey),
            const SizedBox(width: 8),
            Text(
              'Gabriel Pico',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    ],
  ),
),
      
    );
  }
}