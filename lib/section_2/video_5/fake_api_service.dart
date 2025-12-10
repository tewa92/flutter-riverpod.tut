import 'dart:math';
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';


final fakeApiProvider = Provider((_) => FakeService());

class FakeService {
  Future<String> fetchGreeting() async {
    await Future.delayed(const Duration(seconds: 2));
    // Simulate fetching data from an API
    if (Random().nextDouble() < 0.3) {
      throw Exception('API call failed');
    
    }
    return 'Hello, from async!';
  
  }
}