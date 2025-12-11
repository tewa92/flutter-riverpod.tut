
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tut/section_1/video_2/video_2.dart';
import 'package:flutter_riverpod_tut/section_1/video_3/video_3.dart';
import 'package:flutter_riverpod_tut/section_1/video_3/video_3_animation_example.dart';
import 'package:flutter_riverpod_tut/section_2/video_5/video_5.dart';
import 'package:flutter_riverpod_tut/section_2/video_6/video_6.dart';
import 'package:flutter_riverpod_tut/section_2/video_7/counter_example/counter_screen.dart';
import 'package:flutter_riverpod_tut/section_2/video_7/todo_example/todo_screen.dart';

void main(){
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: TodoScreen(),
      ),
    )
  );
}