import 'package:flutter_riverpod/flutter_riverpod.dart';

final onlineStatusProvider = StateNotifierProvider<OnlineStatusNotifier, bool>((ref) {
  return OnlineStatusNotifier();
});

class OnlineStatusNotifier extends StateNotifier<bool> {
  OnlineStatusNotifier() : super(true); // Initial state is online

  void toggleOnlineStatus(bool value) {
    state = value; // Update the state
  }
}
