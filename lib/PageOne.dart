import 'package:flutter/material.dart';
import 'package:bloc_counter/CounterButton.dart';
import 'package:bloc_counter/PageTwo.dart';


class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("PageOne"),
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
                child: Text("++1"),
                onPressed: (){
                  _pageTwo(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _pageTwo(BuildContext context){
    Navigator
    .of(context)
        .push(MaterialPageRoute(builder: (BuildContext context){
          return PageTwo();
    }));
  }
}