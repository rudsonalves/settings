import 'package:flutter/material.dart';

enum ThreeState { first, second, third }

class AppSettings {
  ValueNotifier<int> counter$ = ValueNotifier(0);
  ValueNotifier<bool> selection$ = ValueNotifier(false);
  ValueNotifier<ThreeState> state$ = ValueNotifier(ThreeState.first);

  int get counter => counter$.value;

  bool get selection => selection$.value;

  ThreeState get state => state$.value;

  void increment() => counter$.value++;

  void toggleSelection() => selection$.value = !selection$.value;

  void toggleState() {
    switch (state$.value) {
      case ThreeState.first:
        state$.value = ThreeState.second;
        break;
      case ThreeState.second:
        state$.value = ThreeState.third;
        break;
      case ThreeState.third:
        state$.value = ThreeState.first;
        break;
    }
  }
}
