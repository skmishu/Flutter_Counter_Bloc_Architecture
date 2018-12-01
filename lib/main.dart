import 'package:flutter/material.dart';
import 'package:bloc_counter/BlocProvider.dart';
import 'package:bloc_counter/PageOne.dart';
import 'package:bloc_counter/CounterBloc.dart';


Future<void> main() async{
  return runApp(
    BlocProvider(child: MyApp(), bloc: IncrementBloc()),
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Demo',
      home: PageOne(),
    );
  }
}