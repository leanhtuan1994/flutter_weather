extension StringEx on String {
  String reverse() {
    if (this.isEmpty) return '';
    StringBuffer sb = StringBuffer();
    for (int i = this.length - 1; i >= 0; i--) {
      sb.writeCharCode(this.codeUnitAt(i));
    }

    return sb.toString();
  }

  String formatDigitPattern({int digit = 4, String pattern = ' '}) {
    String text = this;
    text = text?.replaceAllMapped(RegExp('(.{$digit})'), (Match match) {
      return '${match.group(0)}$pattern';
    });
    if (text != null && text.endsWith(pattern)) {
      text = text.substring(0, text.length - 1);
    }
    return text;
  }

  String formatSpace4() {
    return this.formatDigitPattern();
  }

  String formatDigitPatternEnd({int digit = 4, String pattern = ' '}) {
    String temp = this.reverse();
    temp = temp.formatDigitPattern(digit: digit, pattern: pattern);
    temp = temp.reverse();
    return temp;
  }

  String hideNumber({int start = 3, int end = 7, String replacement = '****'}) {
    return this?.replaceRange(start, end, replacement);
  }
}
