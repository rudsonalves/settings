enum ThreeState { first, second, third }

class AppSettings {
  int _counter = 0;
  bool _selection = false;
  ThreeState _state = ThreeState.first;

  int get counter => _counter;

  bool get selection => _selection;

  ThreeState get state => _state;

  void increment() {
    _counter++;
  }

  void toggleSelection() {
    _selection = !_selection;
  }

  void toggleState() {
    switch (_state) {
      case ThreeState.first:
        _state = ThreeState.second;
        break;
      case ThreeState.second:
        _state = ThreeState.third;
        break;
      case ThreeState.third:
        _state = ThreeState.first;
        break;
    }
  }
}
