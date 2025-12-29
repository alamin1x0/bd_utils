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

  static String today() {
    final now = DateTime.now();
    return "${now.day} ${_months[now.month - 1]} ${now.year}";
  }

  static String todayWithDay() {
    final now = DateTime.now();
    return "${_days[now.weekday % 7]}, ${today()}";
  }
}
