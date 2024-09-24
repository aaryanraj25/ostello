import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardController extends StateNotifier<int> {
  DashboardController() : super(0);

  void setIndex(int index) {
    state = index;
  }

  int get currentIndex => state;
}

final dashboardControllerProvider = StateNotifierProvider<DashboardController, int>((ref) {
  return DashboardController();
});