
class Validator {

  static String? isUserName(userName) {
    if (userName.toString().trim().isEmpty) {
      return 'please enter name';
    }
    return null;
  }
}
