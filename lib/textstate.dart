import 'package:flutter/cupertino.dart';

@immutable
abstract class textstate {
  const textstate();
}
class textidle extends textstate {}

class textsubmit extends textstate {
  final String musicTitle;
  const textsubmit({@required this.musicTitle}) : assert(musicTitle != null);
}

