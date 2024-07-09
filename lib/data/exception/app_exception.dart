class AppException implements Exception {
  final _message;
  final _prefix;

  AppException(this._message, this._prefix);

  @override
  String toString() {
    return 'AppException: $_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication: ');
}

class NoInternetException extends AppException {
  NoInternetException([String? message]) : super(message, 'No Internet: ');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid Request: ');
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message]) : super(message, 'Unauthorised: ');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input: ');
}

class NoServiceFoundException extends AppException {
  NoServiceFoundException([String? message])
      : super(message, 'No Service Found: ');
}

class NoDataFoundException extends AppException {
  NoDataFoundException([String? message]) : super(message, 'No Data Found: ');
}

class NoImageFoundException extends AppException {
  NoImageFoundException([String? message]) : super(message, 'No Image Found: ');
}

class NoVideoFoundException extends AppException {
  NoVideoFoundException([String? message]) : super(message, 'No Video Found: ');
}

class NoAudioFoundException extends AppException {
  NoAudioFoundException([String? message]) : super(message, 'No Audio Found: ');
}

class NoFileFoundException extends AppException {
  NoFileFoundException([String? message]) : super(message, 'No File Found: ');
}

class NoLocationFoundException extends AppException {
  NoLocationFoundException([String? message])
      : super(message, 'No Location Found: ');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message])
      : super(message, 'Request Time Out: ');
}

class ServerErrorException extends AppException {
  ServerErrorException([String? message]) : super(message, 'Server Error: ');
}
