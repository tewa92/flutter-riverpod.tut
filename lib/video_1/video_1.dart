import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MaterialApp(home: const MyApp())));
}

final staticProvider = Provider((Ref ref) {
  return 'Hello, Riverpod!';
});


final intProvider = Provider((Ref ref) {
  return 23;
});


final doubleProvider = Provider((Ref ref) {
  return 3.14;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(staticProvider);
    final intValues = ref.watch(intProvider);
    final doubleValue = ref.watch(doubleProvider);
    return Scaffold(body: Center(child: Text(results + '\n' +doubleValue.toString() + ' \n' + intValues.toString())));
  }
}
