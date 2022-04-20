abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
