class PalindromeFeature {
  static bool isPalindrom(String text) {
    List<String> array = text.replaceAll(' ', '').split('');
    int indexFromLeft = 0;
    int indexFromRight = array.length - 1;

    while (indexFromRight - 1 >= 0) {
      if (array[indexFromLeft++] != array[indexFromRight--]) {
        return false;
      }
    }
    return true;
  }
}
