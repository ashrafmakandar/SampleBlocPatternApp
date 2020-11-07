import 'package:demos/Enteredvalue.dart';
import 'package:demos/Validtext.dart';
import 'package:demos/textblock.dart';
import 'package:demos/textevent.dart';
import 'package:demos/textstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Enteredvalue enteredvale = Validtext();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
          create: (BuildContext context) => textblock(Validtext()),
          child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<textblock, textstate>(
                    builder: (context, state) {
                  if (state is textidle) {

                    return Text("idle");

                  } else if (state is textsubmit) {
                    return Text(state.musicTitle);
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                    onPressed: () {
                      BlocProvider.of<textblock>(context)
                          .add(textafterclick(musicTitle: 'clicked change'));
                    },
                    color: Colors.black87,
                    splashColor: Colors.lightGreenAccent,
                    child: Text(
                      "click",
                      style: TextStyle(color: Colors.redAccent),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
