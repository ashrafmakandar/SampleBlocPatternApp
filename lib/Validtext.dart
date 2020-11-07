import 'package:demos/Enteredvalue.dart';

class Validtext extends Enteredvalue {

  @override
  Future<String> before() {
    return Future.value("before");
  }

  @override
  Future<String> enter(String text) {
    return Future.value("entered" + text+"1");
  }

  @override
  Future<String> error() {
    return Future.value("error");
  }
}
