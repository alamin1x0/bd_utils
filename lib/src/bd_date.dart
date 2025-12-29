class BdDate {
  static const List<String> _months = [
    "জানুয়ারি",
    "ফেব্রুয়ারি",
    "মার্চ",
    "এপ্রিল",
    "মে",
    "জুন",
    "জুলাই",
    "আগস্ট",
    "সেপ্টেম্বর",
    "অক্টোবর",
    "নভেম্বর",
    "ডিসেম্বর",
  ];

  static const List<String> _days = [
    "রবিবার",
    "সোমবার",
    "মঙ্গলবার",
    "বুধবার",
    "বৃহস্পতিবার",
    "শুক্রবার",
    "শনিবার",
  ];

  static const Map<String, String> _bnNumbers = {
    '0': '০',
    '1': '১',
    '2': '২',
    '3': '৩',
    '4': '৪',
    '5': '৫',
    '6': '৬',
    '7': '৭',
    '8': '৮',
    '9': '৯',
  };

  static String _toBanglaNumber(int number) {
    return number.toString().split('').map((e) => _bnNumbers[e] ?? e).join();
  }

  static String today() {
    final now = DateTime.now();
    String dayBangla = _toBanglaNumber(now.day);
    String yearBangla = _toBanglaNumber(now.year);
    return "$dayBangla ${_months[now.month - 1]} $yearBangla";
  }

  static String todayWithDay() {
    final now = DateTime.now();
    String dayBangla = _toBanglaNumber(now.day);
    String yearBangla = _toBanglaNumber(now.year);
    return "${_days[now.weekday % 7]}, $dayBangla ${_months[now.month - 1]} $yearBangla";
  }
}
