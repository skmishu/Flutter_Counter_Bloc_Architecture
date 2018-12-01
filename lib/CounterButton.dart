import 'package:flutter/material.dart';
import 'package:bloc_counter/BlocProvider.dart';
import 'package:bloc_counter/CounterBloc.dart';

class CounterButton extends StatelessWidget {
  CounterButton({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);

    return FlatButton(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          child,
          Positioned(
            top: -12.0,
            right: -6.0,
            child: Material(
              type: MaterialType.circle,
              elevation: 2.0,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: StreamBuilder<int>(
                  stream: bloc.outCounter1,
                  initialData: 0,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
