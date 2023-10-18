// import 'package:flutter/material.dart';

// class BookDetailPage extends StatefulWidget {
//   final String book;

//   const BookDetailPage({Key? key, required this.book}) : super(key: key);

//   @override
//   _BookDetailPageState createState() => _BookDetailPageState();
// }

// class _BookDetailPageState extends State<BookDetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.book.title),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Image.network(widget.book.coverImage),
//             SizedBox(height: 16.0),
//             Text(widget.book.title, style: TextStyle(fontSize: 24.0)),
//             SizedBox(height: 8.0),
//             Text(widget.book.author),
//             SizedBox(height: 8.0),
//             Text(widget.book.publisher),
//             SizedBox(height: 8.0),
//             Text(widget.book.yearPublished),
//             SizedBox(height: 8.0),
//             Text(widget.book.description),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'book_page.dart';

class BookDetailPage extends StatefulWidget {
  final Book book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            Text(widget.book.title, style: const TextStyle(fontSize: 24.0)),
            const SizedBox(height: 8.0),
            Text(widget.book.author),
            const SizedBox(height: 8.0),
            Text(widget.book.publisher),
            const SizedBox(height: 8.0),
            Text(widget.book.yearPublished as String),
            
          ],
        ),
      ),
    );
  }
}
