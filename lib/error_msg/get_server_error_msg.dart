import 'package:exceptions/constants/server_error_constants.dart';
import 'package:exceptions/failures/api_failure.dart';

String getServerErrorMsg(ApiFailureType appErrorType) {
  switch (appErrorType) {
    case ApiFailureType.network:
      return ErrorConstants.noNetwork;
    case ApiFailureType.api:
    case ApiFailureType.database:
      return ErrorConstants.somethingWentWrong;
    case ApiFailureType.sessionDenied:
      return ErrorConstants.sessionDenied;
    default:
      return ErrorConstants.wrongUsernamePassword;
  }
}
