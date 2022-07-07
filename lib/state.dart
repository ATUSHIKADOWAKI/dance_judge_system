import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  //super(初期値)
  CounterNotifier() : super(0);
  void increment() => state++;
  void decrement() => state--;
}

//④グローバルに宣言
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class ScoreNotifier extends StateNotifier<double> {
  //super(初期値)
  ScoreNotifier() : super(0);
  void increment() => state += 0.1;
  void decrement() => state -= 0.1;
}

//④グローバルに宣言
final scoreProvider = StateNotifierProvider<ScoreNotifier, double>((ref) {
  return ScoreNotifier();
});
