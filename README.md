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

BdPhone.isValid("01712345678");
BdCurrency.format(1200);
BdDate.todayWithDay();
BdNumber.toBangla(123);
