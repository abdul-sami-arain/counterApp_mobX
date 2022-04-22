import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class CounterStore = Counter with _$CounterStore;

abstract class Counter with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    counter--;
  }

  // late Action increment;
  // late Action decrement;

  // Counter() {
  //   increment = Action(() {
  //     counter.value++;
  //   });
  //   decrement = Action(() {
  //     counter.value--;
  //   });
  //}
}
