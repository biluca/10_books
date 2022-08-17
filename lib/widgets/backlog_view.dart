import 'package:flutter/material.dart';
import 'package:ten_books/model/book_model.dart';

class BacklogView extends StatefulWidget {
  const BacklogView({Key? key}) : super(key: key);

  @override
  BacklogViewState createState() => BacklogViewState();
}

class BacklogViewState extends State<BacklogView> {
  Widget _buildRow(Book book) {
    var bookName = Text(
      book.name,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(4),
        itemCount: backlogBooks.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildRow(backlogBooks[index]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        tooltip: 'New Book',
        child: const Icon(Icons.add),
      ),
    );
  }
}
