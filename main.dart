import 'bankAccount.dart';
import 'book.dart';
import 'serializable.dart';
import 'shape.dart';

void main() {
  //Task 1
  Book book = Book("title", "author", 1);
  book.displayInfo();

  //Task 2
  Novel novel = Novel("title", "author", 1, 'Genre');
  novel.displayInfo();

  //Task 3
  Circle circle = Circle(r: 10);
  showArea(circle);

  Rectangle rectangle = Rectangle(length: 4, width: 6);
  showArea(rectangle);

  //Task 4
  User user = User('ibrahim ismail', 'ibrahim@gmail.com');
  printJson(user);
  Product product = Product('Laptop', 50000);
  printJson(product);

  //Task 5
  var account = BankAccount();
  account.deposit(1000);

  try {
    account.withdraw(1200);
  } catch (e) {
    if (e is OverdraftException) {
      print('Exception: ${e.errorMessage()}');
    } else {
      print('Unknown Exception occurred');
    }
  }
}

void showArea(Shape shape) {
  print('Area: ${shape.area()}');
}
