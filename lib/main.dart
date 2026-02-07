import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscar Wilde'),
    Quote(text: 'A room without books is like a body without a soul', author: 'Marcus Tullius Cicero'),
    Quote(text: 'You only live once, but if you do it right, once is enough', author: 'Mae West'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}
