import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tut/section_2/video_7/counter_example/counter_provider_controller.dart';

/// UI Screen to display data
class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    final ctrl = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('CounterNotifier')),
      body: Center(
        child: Text('Count: $count', style: TextStyle(fontSize: 32)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: ctrl.decrement,
            heroTag: 'dec',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 12),
          FloatingActionButton(
            onPressed: ctrl.increment,
            heroTag: 'inc',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 12),
          FloatingActionButton(
            onPressed: ctrl.reset,
            heroTag: 'res',
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
