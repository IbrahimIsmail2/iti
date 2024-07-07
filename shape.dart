// Task 3
abstract class Shape {
  double area();
}

class Circle implements Shape {
  double r;

  Circle({required this.r});

  @override
  double area() {
    return 3.14 * r * r;
  }
}

class Rectangle implements Shape {
  double length;
  double width;

  Rectangle({required this.length, required this.width});

  @override
  double area() {
    return length * width;
  }
}

void showArea(Shape shape) {
  print('Area: ${shape.area()}');
}
