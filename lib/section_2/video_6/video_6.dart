import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tut/section_2/video_6/fake_api_service.dart';

// create a stream provide
final tickerProvider = StreamProvider((ref){
  final timerService = ref.read(timeServiceProvider);
  return timerService.tickWithError();
});

// UI screen to display data from the stream provider

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickerAsyncValue = ref.watch(tickerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamProvider Example'),
      ),
      body: Center(
        child: tickerAsyncValue.when(
          skipLoadingOnRefresh: false,
          data: (count) => Text(
            'Seconds elapsed: $count',
            style: const TextStyle(fontSize: 24),
          ),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Error: $error', style: const TextStyle(color: Colors.red)),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => ref.refresh(tickerProvider),
                child: const Text('Retry'),
              ),
            ],
          ),        ),
      ),
    );
  }
}