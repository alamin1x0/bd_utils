class BdCurrency {
  static String format(num amount, {int fraction = 2}) {
    return "৳${amount.toStringAsFixed(fraction)}";
  }
}
