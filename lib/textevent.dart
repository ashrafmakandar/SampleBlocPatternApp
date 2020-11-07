import 'package:flutter/cupertino.dart';

@immutable
abstract class textevent {
  const textevent();
}

class textbeforclick extends textevent {}

class textafterclick extends textevent {
  final String musicTitle;

  const textafterclick({@required this.musicTitle})
      : assert(musicTitle != null);
}
