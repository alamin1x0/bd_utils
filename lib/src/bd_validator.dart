import 'bd_phone.dart';

class BdValidator {
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number required";
    }
    if (!BdPhone.isValid(value)) {
      return "Invalid Bangladeshi phone number";
    }
    return null;
  }
}
