import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback? onDelte;
  const QuoteCard({super.key, required this.quote, required this.onDelte});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.amberAccent),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: onDelte,
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
