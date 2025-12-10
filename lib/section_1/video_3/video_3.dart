import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textProvider = StateProvider((ref) => '');

class StateFullConsumer extends ConsumerStatefulWidget {
  const StateFullConsumer({super.key});

  @override
  ConsumerState<StateFullConsumer> createState() => _StateFullConsumerState();
}

class _StateFullConsumerState extends ConsumerState<StateFullConsumer> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      ref.read(textProvider.notifier).state = _controller.text;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Building Widget");
    return Scaffold(
      appBar: AppBar(title: const Text('Text Form')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(controller: _controller),
            const SizedBox(height: 20),
            Consumer(builder: (context, ref, child) {
              print("Building Text Widget");
              final text = ref.watch(textProvider);
              return Text('You typed: $text');
            }),
          ],
        ),
      ),
    );

  }
}