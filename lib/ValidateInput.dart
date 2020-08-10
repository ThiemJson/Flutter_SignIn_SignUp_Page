class ValidateInput{
  static bool isEmail(String input){
    if(input == "") return false;
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input);
  }
  static bool isUserName(String input){
    if(input == "") return false;
    return RegExp(r"^(?=[a-zA-Z0-9._]{8,20}$)(?!.*[_.]{2})[^_.].*[^_.]$").hasMatch(input);
  }
  static bool isPhoneNumber(String input){
    if(input == "") return false;
    return RegExp(r"/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/").hasMatch(input);
  }
  static bool isPassword(String input){
    if(input == "") return false;
    return RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$").hasMatch(input);
  }
}