const double vatRate = 0.07;

double calcTotal({required int price,required int qty, double? disount}){
  if (disount != null) {
    return (price * qty - disount) * (1+vatRate);
  } else {
    return (price * qty) * (1+vatRate);
  }
}

void main(){
  final String shopName = "Dart Cafe";
  print("ร้าน:$shopName");
  print("อัตราภาษี (vatRate): $vatRate");

  List<String> categories = ["Drinks","Foods","Bakery"];
  print("หมวดเมนู: $categories");
  Map<String,int> menu = {
    "matcha" : 60,
    "krapow" : 50,
    "cheese cake" : 79
  };
  print("จำนวนเมนูทั้งหมด: ${menu.length} รายการ");
  print("ราคามัจฉะ ${menu["matcha"]} บาท");
  print("เมนูที่มีราคามากกว่า 50 บาทขั้นไป");
  
  menu.forEach(((key, value){  
    if (value > 50){
      print("$key : $value บาท");
    }
  }));

  var hDiscount = calcTotal(price: 60, qty: 2, disount: 50);
  var nDiscount = calcTotal(price: 60, qty: 2);
  print("ยอดสุทธิ (ไม่มีส่วนลด): $nDiscount บาท");
  print("ยอดสุทธิ (มีส่วนลด): $hDiscount บาท");

  String? coupon;
  int length = coupon?.length ?? 0;
  String check_coupon = coupon??="NO-COUPON";
  print("ความยาวคูปอง: $length");
  print("คูปองหลังกำหนดค่า: $check_coupon");
}