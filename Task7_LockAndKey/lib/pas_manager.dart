import 'dart:math';

class PasswordManager {
  static final Random _random = Random();

  static String validatePassword(String password) {
    final hasUpper = RegExp(r'[A-Z]').hasMatch(password);
    final hasLower = RegExp(r'[a-z]').hasMatch(password);
    final hasDigit = RegExp(r'\d').hasMatch(password);
    final hasSymbol = RegExp(r'[!@#\$&*~]').hasMatch(password);

    if (password.length >= 12 && hasUpper && hasLower && hasDigit && hasSymbol) {
      return "Strong";
    } else if (password.length >= 8 && hasLower && hasDigit) {
      return "Intermediate";
    } else {
      return "Weak";
    }
  }

  static String generateStrongPassword([int length = 14]) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$&*~';
    return _generatePassword(chars, length);
  }

  static String generateIntermediatePassword([int length = 10]) {
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return _generatePassword(chars, length);
  }

  static String generateLowStrengthPassword([int length = 6]) {
    const chars = 'abcdefghijklmnopqrstuvwxyz';
    return _generatePassword(chars, length);
  }

  static String _generatePassword(String chars, int length) {
    return List.generate(length, (index) => chars[_random.nextInt(chars.length)]).join();
  }
}
