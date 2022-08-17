import 'package:flutter/material.dart';
import 'package:ten_books/model/book_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

Widget _buildRow(Book book) {
  var bookName = Text(
    "${book.priority}#  ${book.name} ",
    style: const TextStyle(fontSize: 16),
  );

  var bookAuthor = Text(
    book.author,
    style: const TextStyle(fontSize: 14),
  );

  var rowIcon = const Icon(Icons.more_vert);

  return ListTile(
    title: bookName,
    subtitle: bookAuthor,
    trailing: rowIcon,
  );
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      padding: const EdgeInsets.all(4),
      itemCount: prioritezed_books.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildRow(prioritezed_books[index]);
      },
    ));
  }
}
