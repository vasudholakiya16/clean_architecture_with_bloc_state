class Validation {
  static bool emailValidator(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool passwordValidator(String password) {
    return password.length >= 6;
  }

  static bool confirmPasswordValidator(
      String password, String confirmPassword) {
    return password == confirmPassword;
  }

  static bool nameValidator(String name) {
    return name.length >= 3;
  }

  static bool phoneValidator(String phone) {
    return phone.length >= 10;
  }

  static bool addressValidator(String address) {
    return address.length >= 3;
  }

  static bool cityValidator(String city) {
    return city.length >= 3;
  }

  static bool stateValidator(String state) {
    return state.length >= 3;
  }

  static bool zipCodeValidator(String zipCode) {
    return zipCode.length >= 3;
  }

  static bool countryValidator(String country) {
    return country.length >= 3;
  }

  static bool cardNumberValidator(String cardNumber) {
    return cardNumber.length >= 16;
  }

  static bool cardHolderNameValidator(String cardHolderName) {
    return cardHolderName.length >= 3;
  }

  static bool cvvValidator(String cvv) {
    return cvv.length >= 3;
  }

  static bool expiryDateValidator(String expiryDate) {
    return expiryDate.length >= 3;
  }

  static bool amountValidator(String amount) {
    return amount.length >= 1;
  }
}
