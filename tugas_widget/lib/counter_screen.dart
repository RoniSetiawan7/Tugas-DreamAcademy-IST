import 'package:flutter/material.dart';
import 'package:tugas_widget/counter_inherited.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterInherited(child: const CounterWidget());
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder<int>(
          valueListenable: CounterInherited.of(context).counterInherited,
          builder: (BuildContext context, value, Widget? child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('You have pushed the button this many times:'),
                  Text(
                    '$value',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      CounterInherited.of(context).addCounter();
                    },
                    child: const Text('Add'),
                  )
                ],
              ),
            );
          },
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     CounterInherited.of(context).addCounter();
        //   },
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}
