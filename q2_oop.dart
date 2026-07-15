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
}

void main(){
  
}