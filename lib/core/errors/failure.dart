// abstract class Failure implements Exception {
//   final String message;
//   Failure(this.message);
// }

class Failure {
  final String message;
  Failure(this.message);

  @override
  String toString() => message;
}

class DatabaseFailure extends Failure {
  DatabaseFailure(String message) : super(message);
}

// class DatabaseFailure extends Failure {
//   DatabaseFailure(super.message);
// }

class AuthFailure extends Failure {
  AuthFailure(super.message);
}

class HttpRequestFailure extends Failure {
  HttpRequestFailure(super.message);
}

class ConnectionFailure extends Failure {
  ConnectionFailure(super.message);
}

class LocalStorageFailure extends Failure {
  LocalStorageFailure(super.message);
}
