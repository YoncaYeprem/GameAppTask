enum StringConstants {
  HomeTitle,
  ButtonTitle,
  GameOver,
  Go,
  DialogInfo,
  DialogClose,
  DialogOk
}

extension StringConstantExtension on StringConstants {
  String get value {
    switch (this) {
      case StringConstants.HomeTitle:
        return "Let's Start Game";
      case StringConstants.ButtonTitle:
        return "Start";
      case StringConstants.GameOver:
        return "GAME OVER";
      case StringConstants.Go:
        return "GO!";
      case StringConstants.DialogInfo:
        return "Information";
      case StringConstants.DialogClose:
        return "Close";
      case StringConstants.DialogOk:
        return "OK";
      default:
        return "";
    }
  }
}

class StringConstant {
  static const String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in nulla ultrices, rhoncus ligula sed, ultricies augue. Nullam aliquet facilisis nulla in elementum. Etiam justo dui, egestas ac nisi vitae, blandit dictum lectus. Suspendisse ullamcorper vulputate luctus. Praesent et egestas lorem. Integer sem massa, tristique a lobortis sed, tincidunt nec neque. Donec sodales ultricies velit, ac fermentum eros sagittis non. Nulla at rhoncus ex, eu scelerisque nunc. Praesent lacinia felis eget lacus venenatis, in pellentesque ex euismod. Proin eget felis nulla. Pellentesque a risus nunc..Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam in nulla ultrices, rhoncus ligula sed, ultricies augue. Nullam aliquet facilisis nulla in elementum. Etiam justo dui, egestas ac nisi vitae, blandit dictum lectus. Suspendisse ullamcorper vulputate luctus. Praesent et egestas lorem. Integer sem massa, tristique a lobortis sed, tincidunt nec neque. Donec sodales ultricies velit, ac fermentum eros sagittis non. Nulla at rhoncus ex, eu scelerisque nunc. Praesent lacinia felis eget lacus venenatis, in pellentesque ex euismod. Proin eget felis nulla. Pellentesque a risus nunc.';
}
