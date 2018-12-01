import 'package:flutter/material.dart';
import 'CounterButton.dart';
import 'CounterBloc.dart';
import 'package:bloc_counter/BlocProvider.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App page two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CounterButton(
                  child: const Icon(Icons.favorite),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: RaisedButton(
                  child: Text('Hit me (+1)'),
                  onPressed: () {

                    bloc.incrementCounter.add(null);

                  }),
            ),
          ],
        ),
      ),
    );
  }
}
