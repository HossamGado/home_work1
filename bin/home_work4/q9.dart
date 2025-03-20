// Create a class `Rectangle` with:
// - Private attributes `_width` and `_height`.
// - A constructor that initializes the values.
// - A getter `area` that calculates and returns the area.
// In `main()`, create a `Rectangle` object and print its area.

void main() {
  Rectangle rectangle = Rectangle(6, 9);
  print("Area of rectangle: ${rectangle.area}");
}

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  double get width => _width;

  double get height => _height;

  set width(double width) {
    this.width = width;
  }

  set height(double height) {
    this.height = height;
  }

  double get area {
    return _width * _height;
  }
}
