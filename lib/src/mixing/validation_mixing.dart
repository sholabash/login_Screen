class ValidationMixing {
  String? validateEmail(value) {
    if (value == null || !value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.length < 8) {
      return 'Password must be greater than 8 characters';
    }
    return null;
  }
}
