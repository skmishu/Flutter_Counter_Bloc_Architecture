import 'package:bloc_counter/BlocProvider.dart';
import 'package:rxdart/rxdart.dart';

class IncrementBloc implements BlocBase {
  int _counter1, _counter2;
  String _name;

  BehaviorSubject<int> _counterController = BehaviorSubject<int>();

  Sink<int> get _inAddCounter1 => _counterController.sink;

  Stream<int> get outCounter1 => _counterController.stream;

  BehaviorSubject _actionController = BehaviorSubject();

  Sink get incrementCounter => _actionController.sink;

  IncrementBloc() {
    _counter1 = 0;
    _actionController.stream.listen(_handleLogic1);
  }

  @override
  void dispose() {
    _actionController.close();
    _counterController.close();
  }

  void _handleLogic1(dynamicVoid) {
    print('counter clicked');
    _counter1 += 1;
    _inAddCounter1.add(_counter1);
  }
}
