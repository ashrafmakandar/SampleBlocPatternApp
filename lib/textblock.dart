import 'package:bloc/bloc.dart';
import 'package:demos/Enteredvalue.dart';
import 'package:demos/textevent.dart';
import 'package:demos/textstate.dart';

class textblock extends Bloc<textevent, textstate> {
  final Enteredvalue enteredvale;

  textblock(this.enteredvale) : assert(enteredvale != null);

  @override
  textstate get initialState => textidle();

  @override
  Stream<textstate> mapEventToState(textevent event) async* {
    if (event is textafterclick) {
      final musicTitle = event.musicTitle;
      enteredvale.enter(musicTitle);
      yield textsubmit(musicTitle: musicTitle);
    } else if (event is textbeforclick) {

    }
  }
}
