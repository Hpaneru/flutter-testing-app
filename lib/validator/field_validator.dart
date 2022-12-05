bool isEmail(String em) => RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    .hasMatch(em);

class FieldValidator {
  static String validateEmail(String value) {
    if (value.isEmpty) {
      return "Please Enter Your Email!";
    } else if (!isEmail(value)) {
      return "Invalid Email. Please enter valid email!";
    }
    return "";
  }

  static String validatePassword(String value) {
    if (value.isEmpty) {
      return "Please Enter Your Password!";
    } else if (value.length < 6) {
      return "Password must be more than 6 charater!";
    }
    return "";
  }
}
