class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.isbn,
    this.isAvailable = true,
  });
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  bool borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print('Book borrowed: ${book.title}');
        return true;
      }
    }
    print('Book not available or not found.');
    return false;
  }

  bool returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print('Book returned: ${book.title}');
        return true;
      }
    }
    print('Book not found or already available.');
    return false;
  }

  List<Book> searchByTitle(String title) {
    return books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
  }
}

void main() {
  Library library = Library();

  library.addBook(Book(title: 'Dart Programming', author: 'John Doe', isbn: '12345'));
  library.addBook(Book(title: 'Flutter Basics', author: 'Jane Smith', isbn: '67890'));

  library.borrowBook('12345');
  library.returnBook('12345'); 

  var searchResults = library.searchByTitle('Flutter');
  for (var book in searchResults) {
    print('Found: ${book.title} by ${book.author}');
  }
}