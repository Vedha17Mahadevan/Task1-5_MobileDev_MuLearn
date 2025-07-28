import 'package:lock_and_key/pas_manager.dart';

void main() {
  String low = PasswordManager.generateLowStrengthPassword();
  String mid = PasswordManager.generateIntermediatePassword();
  String strong = PasswordManager.generateStrongPassword();

  print("Low Strength Password: $low → ${PasswordManager.validatePassword(low)}");
  print("Intermediate Password: $mid → ${PasswordManager.validatePassword(mid)}");
  print("Strong Password: $strong → ${PasswordManager.validatePassword(strong)}");

  String sample = "Password@123";
  print("\nManual Validation – '$sample': ${PasswordManager.validatePassword(sample)}");
}
