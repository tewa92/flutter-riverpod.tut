import 'package:flutter_riverpod/flutter_riverpod.dart';

final timeServiceProvider = Provider((_) {
  return TimerService();
});

class TimerService {
  // Simulates a ticking clock that emits an integer every second
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (count) => count);
  }

  // in timerservice

  Stream<int> tickWithError() async*{
    for (int i = 0; i < 5; i++){
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
    throw Exception('Something went wrong');
  }
}
