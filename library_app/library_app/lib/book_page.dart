import 'package:flutter/material.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  final List<Book> _books = [
    Book(
      title: 'The Lord of the Rings',
      author: 'J.R.R. Tolkien',
      publisher: 'HarperCollins Publishers',
      yearPublished: 1954,
    ),
    Book(
      title: 'Harry Potter and the Sorcerer',
      author: 'J.K. Rowling',
      publisher: 'Bloomsbury Publishing',
      yearPublished: 1997,
    ),
    Book(
      title: 'The Hunger Games',
      author: 'Suzanne Collins',
      publisher: 'Scholastic Press',
      yearPublished: 2008,
    ),
    Book(
      title: 'The Da Vinci Code',
      author: 'Dan Brown',
      publisher: 'Doubleday',
      yearPublished: 2003,
    ),
    Book(
      title: 'The Martian',
      author: 'Andy Weir',
      publisher: 'Crown Publishers',
      yearPublished: 2011,
    ),
    Book(
      title: 'The Hitchhiker',
      author: 'Douglas Adams',
      publisher: 'Pan Books',
      yearPublished: 1979,
    ),
    Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      publisher: 'Charles Scribner',
      yearPublished: 1925,
    ),
    Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      publisher: 'John Murray',
      yearPublished: 1813,
    ),
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      publisher: 'J.B. Lippincott & Co.',
      yearPublished: 1960,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Buku'),
      ),
      body: ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_books[index].title),
            subtitle: Text(_books[index].author),
            onTap: () {
              // Arahkan ke halaman detail buku
              Navigator.pushNamed(context, '/book/detail', arguments: _books[index]);
            },
          );
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String publisher;
  final int yearPublished;

  Book({
    required this.title,
    required this.author,
    required this.publisher,
    required this.yearPublished,
  });
}
