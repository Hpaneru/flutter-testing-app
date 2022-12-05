import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/validator/field_validator.dart';

void main() {
  test('Empty Email Test', () {
    String result = FieldValidator.validateEmail("");
    expect(result, "Please Enter Your Email!");
  });

  test('Invalid Email Test', () {
    String result = FieldValidator.validateEmail("acb.gmail.com");
    expect(result, "Invalid Email. Please enter valid email!");
  });

  test('Valid Email Test', () {
    String result = FieldValidator.validateEmail("hpaneru.hp.dev@gmail.com");
    expect(result, "");
  });

  test('Empty Password Test', () {
    String result = FieldValidator.validatePassword("");
    expect(result, "Please Enter Your Password!");
  });

  test('Invalid Password Test', () {
    String result = FieldValidator.validatePassword("1234");
    expect(result, "Password must be more than 6 charater!");
  });

  test('Valid Password Test', () {
    String result = FieldValidator.validatePassword("@Testpwd123");
    expect(result, "");
  });
}
