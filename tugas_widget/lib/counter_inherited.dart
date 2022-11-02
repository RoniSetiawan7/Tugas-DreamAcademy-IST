import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CounterInherited extends InheritedWidget {
  CounterInherited({super.key, required super.child});

  ValueNotifier<int> counterInherited = ValueNotifier<int>(0);

  static CounterInherited of(BuildContext context) {
    final CounterInherited? result =
        context.dependOnInheritedWidgetOfExactType<CounterInherited>();
    assert(result != null, 'No Counter found in context');
    return result!;
  }

  void addCounter() {
    counterInherited.value++;
  }

  @override
  bool updateShouldNotify(CounterInherited oldWidget) => true;
}
