import 'package:exceptions/constants/server_error_constants.dart';
import 'package:exceptions/failures/location_error.dart';

String getLocationErrorMsg(LocationErrorType locationErrorType) {
  switch (locationErrorType) {
    case LocationErrorType.permissionDenied:
      return ErrorConstants.permissionDenied;
    case LocationErrorType.permissionDeniedForever:
      return ErrorConstants.permissionDeniedForever;

    default:
      return ErrorConstants.somethingWentWrong;
  }
}
