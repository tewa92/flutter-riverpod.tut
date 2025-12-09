
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tut/video_2/video_2.dart';
import 'package:flutter_riverpod_tut/video_3/video_3.dart';
import 'package:flutter_riverpod_tut/video_3/video_3_animation_example.dart';

void main(){
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: AnimationScreen(),
      ),
    )
  );
}