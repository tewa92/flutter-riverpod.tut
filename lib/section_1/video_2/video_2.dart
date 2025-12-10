import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider = StateProvider((ref) {
  return 0;
});

class StateProviderTutorial extends ConsumerWidget {
  StateProviderTutorial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("Rebuilding Widget");
    return Scaffold(
      appBar: AppBar(title: Text('State Provider Tutorial')),
      floatingActionButton: IconButton(
        onPressed: () {
          ref.read(countProvider.notifier).state++;
        },
        icon: Icon(Icons.add),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          print("Rebuilding Text Widget");
          final counter = ref.watch(countProvider);
          return Text('Count: $counter', style: TextStyle(fontSize: 30));
        }),
      ),
    );
  }
}
