class BdNumber {
  static const Map<String, String> _map = {
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

  static String toBangla(dynamic number) {
    return number
        .toString()
        .split('')
        .map((e) => _map[e] ?? e)
        .join();
  }
}
