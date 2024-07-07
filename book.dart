//question 1
class Book {
  String? title;
  String? author;
  int? numOfPages;

  Book(this.title, this.author, this.numOfPages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numOfPages');
  }
}

//question 2
class Novel extends Book {
  String? genre;

  Novel(super.title, super.author, super.numberPages, this.genre);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}
