# exceptions

A Dart package providing standardized failure messages and error handling classes for authentication, database operations, API failures, and more.

## Features
- Predefined error messages for various failure scenarios.
- Structured failure handling using custom failure classes.
- Easy mapping of failures to user-friendly messages.

## Installation
Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  exceptions: latest_version
```

Then run:

```sh
dart pub get
```

## Usage

### Importing the package
```dart
import 'package:exceptions/exceptions.dart';
```

### Handling Authentication Failures
```dart
import 'package:exceptions/failures/auth_failure.dart';
import 'package:exceptions/constants/auth_failure_messages.dart';

String handleAuthError(AuthFailureType failureType) {
  switch (failureType) {
    case AuthFailureType.unauthorised:
      return AuthFailureMessages.unauthorised;
    case AuthFailureType.networkRequestFailed:
      return AuthFailureMessages.networkRequestFailed;
    default:
      return AuthFailureMessages.unknown;
  }
}
```

### Handling Database Failures
```dart
import 'package:exceptions/failures/db_failure.dart';
import 'package:exceptions/constants/db_failure_messages.dart';

String handleDbError(DbFailureType failureType) {
  switch (failureType) {
    case DbFailureType.permissionDenied:
      return DbFailureMessages.permissionDenied;
    case DbFailureType.dataNotFound:
      return DbFailureMessages.dataNotFound;
    default:
      return DbFailureMessages.somethingWrong;
  }
}
```

### Mapping Failures to Messages
```dart
import 'package:exceptions/exceptions.dart';

String mapFailureToMessage(IFailure failure) {
  switch (failure.runtimeType) {
    case AuthFailure:
      return handleAuthError((failure as AuthFailure).failureType);
    case DbFailure:
      return handleDbError((failure as DbFailure).failureType);
    default:
      return "An unexpected error occurred.";
  }
}
```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request on [GitHub](https://github.com/GenieCoderSrc/exceptions).

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

