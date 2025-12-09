
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tut/video_2/video_2.dart';

void main(){
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: StateProviderTutorial(),
      ),
    )
  );
}