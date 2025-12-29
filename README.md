# 🇧🇩 bd_utils

Bangladesh utility helpers for Flutter apps.

## Features
- Bangladeshi phone validation
- Bangla date & weekday
- Bangla number converter
- Currency formatter (৳)
- Full 64 district list

## Usage
```dart
import 'package:bd_utils/bd_utils.dart';

void main() {
  // Phone validation
  bool isValid = BdPhone.isValid("01712345678");
  print("Phone valid: $isValid");

  // Currency formatting
  String price = BdCurrency.format(1200);
  print("Price: $price"); // ৳1,200

  // Bangla date
  String today = BdDate.today();
  print("Today: $today"); // ২৯ ডিসেম্বর ২০২৫

  String todayWithDay = BdDate.todayWithDay();
  print("Today with weekday: $todayWithDay"); // সোমবার, ২৯ ডিসেম্বর ২০২৫

  // Bangla number conversion
  String banglaNumber = BdNumber.toBangla(123456);
  print("Bangla Number: $banglaNumber"); // ১২৩৪৫৬

  // District list
  List<String> districts = BdDistrict.all;
  print("Districts: $districts");
}
