class BdPhone {
  static bool isValid(String phone) {
    final regex = RegExp(r'^(?:\+88|88)?01[3-9]\d{8}$');
    return regex.hasMatch(phone);
  }

  static String normalize(String phone) {
    phone = phone.replaceAll(RegExp(r'\s|-'), '');
    if (phone.startsWith('+88')) {
      return phone.substring(3);
    }
    if (phone.startsWith('88')) {
      return phone.substring(2);
    }
    return phone;
  }
}
