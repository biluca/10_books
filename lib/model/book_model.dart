class Book {
  int priority;
  String name;
  String author;

  Book({
    required this.priority,
    required this.name,
    required this.author,
  });
}

final List<Book> prioritezed_books = [
  Book(priority: 0, name: "This is how it ends", author: "Colleen Hoover"),
  Book(priority: 1, name: "The Girl from the Lake", author: "Charlie Donlea"),
  Book(priority: 2, name: "Imperfect", author: "Christina Lauren"),
  Book(priority: 3, name: "Animals Revolution", author: "George Orwell"),
  Book(priority: 4, name: "12 Rules for Life", author: "Jordan B. Peterson"),
  Book(priority: 5, name: "The Hobbit", author: "J.R.R. Tolkien"),
  Book(priority: 6, name: "Atomic Habits", author: "James Clear"),
  Book(priority: 7, name: "Shadow & Bones", author: "Leigh Bardugo"),
  Book(priority: 8, name: "The Red Queen", author: "Victoria Aveyard"),
  Book(priority: 9, name: "November", author: "Colleen Hoover"),
];

final List<Book> backlog_books = [
  Book(priority: 100, name: "The Disturbed Mind", author: "Harvey Specter"),
  Book(priority: 101, name: "Danger!", author: "Tim Warnes"),
  Book(priority: 102, name: "Lord of the Flies", author: "William Golding"),
];
