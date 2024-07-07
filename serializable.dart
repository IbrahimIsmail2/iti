// question 4
abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  String email;

  User(this.name, this.email);

  @override
  String toJson() {
    return '{"name": "$name", "email": "$email"}';
  }
}

class Product implements Serializable {
  String productName;
  double price;

  Product(this.productName, this.price);

  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price}';
  }
}

void printJson(Serializable serializable) {
  print('Json: ${serializable.toJson()}');
}
