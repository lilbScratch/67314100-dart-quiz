import 'dart:developer';

abstract class MenuItem{
  final String name;
  final double basePrice;

  MenuItem(this.name,this.basePrice);

  double price();

  void show(){
    print("$name : $price() บาท");
  }
}

class Drink extends MenuItem {
  int topping;
  Drink(String name,double basePrice,this.topping) : super(name,basePrice);
  
  @override
  double price() {
    return basePrice + (10*topping);    
  }
}
class Food extends MenuItem {
  String size;
  Food(String name,double basePrice,this.size) : super(name,basePrice);

  @override
  double price() {
    if (size == 'S') {
      return basePrice * 1;
    } else if (size == 'M') {
      return basePrice * 1.2;
    } else if (size == 'L') {
      return basePrice * 1.5;
    }
  }
}