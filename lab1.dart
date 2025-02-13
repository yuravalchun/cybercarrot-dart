import 'dart:math';

void main() {
    Rectangle rectangle = Rectangle(20, 30, 2);
    Circle circle = Circle(20, 4);
    Circle ring = Circle.ring(20, 19, 4);
    print("Price for rectangle - " + rectangle.get_price());
    print("Price for circle - " + circle.get_price());
    print("Price for ring - " + ring.get_price());
}

abstract class Figure {
    double price_per_square_meter = 1;
    double area = 0;
  
    Figure(price_per_square_meter): this.price_per_square_meter = price_per_square_meter;
    
    void calculate_area();
  
    String get_price() { 
        if (this.area == 0) {
            this.calculate_area(); 
        }
        double price = this.price_per_square_meter * this.area;
        return "$price\$"; 
    }
}

class Rectangle extends Figure {
    double width;
    double height;
  
    Rectangle(width, height, price_per_square_meter) : super(price_per_square_meter) {
      this.width = width;
      this.height = height;
    }
      
    void calculate_area(){
        this.area = width * height;
    }
}

class Circle extends Figure {
    double radius;
    double small_radius = 0;
  
    Circle(radius, price_per_square_meter) : super(price_per_square_meter) {
      this.radius = radius;
    }
  
    Circle.ring(radius, small_radius, price_per_square_meter) : super(price_per_square_meter) {
      this.radius = radius;
      this.small_radius = small_radius;
    }
      
    void calculate_area(){
        this.area = pi * (pow(this.radius, 2) - pow(this.small_radius, 2));
    }
}
