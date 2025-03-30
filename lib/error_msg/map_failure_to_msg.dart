import 'package:exceptions/constants/server_error_constants.dart';
import 'package:exceptions/error_msg/map_db_failure_to_message.dart';
import 'package:exceptions/exceptions.dart';
import 'package:flutter/foundation.dart';

String mapFailureToMessage(IFailure failure) {
  debugPrint(
      'MapFailureToMsg | mapFailureToMessage | failure: ${failure.props}');
  switch (failure.runtimeType) {
    case AuthFailure:
      // Casting to AuthFailure
      AuthFailure authFailure = failure as AuthFailure;
      return mapAuthFailureToMessage(authFailure.failureType);
    case DbFailure:
      // Casting to DbFailure
      DbFailure dbFailure = failure as DbFailure;
      return mapDbFailureToMessage(dbFailure.failureType);
    case ServerFailure:
      return ErrorConstants.somethingWentWrong;
    case CacheFailure:
      return ErrorConstants.CACHE_FAILURE_MESSAGE;
    case FirebaseAuthFailure:
      return ErrorConstants.wrongUsernamePassword;
    case DynamicLinkError:
      return ErrorConstants.sangatNotExist;

    default:
      return ErrorConstants.somethingWentWrong;
  }
}
