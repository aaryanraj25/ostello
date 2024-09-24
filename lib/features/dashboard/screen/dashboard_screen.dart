import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/core/theme/app_colors.dart';
import 'package:ostello/core/theme/app_text_styles.dart';
import 'package:ostello/features/dashboard/controller/dashboard_controller.dart';
import 'package:ostello/features/dashboard/widgets/placeholder_widget.dart';
import 'package:ostello/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(dashboardControllerProvider);

    final List<Widget> screens = [
      HomeScreen(),
      PlaceholderScreen(title: 'Batches'),
      PlaceholderScreen(title: 'Chat'),
      PlaceholderScreen(title: 'Profile'),
    ];

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 88, // Increased height
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => ref.read(dashboardControllerProvider.notifier).setIndex(index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[50],
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.greyColor,
          selectedLabelStyle: AppTextStyles.navigationSelectedText,
          unselectedLabelStyle: AppTextStyles.navigationUnselectedText,
          items: [
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/home.svg',
              label: 'Home',
              isSelected: currentIndex == 0,
            ),
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/batches.svg',
              label: 'Batches',
              isSelected: currentIndex == 1,
            ),
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/chat.svg',
              label: 'Chat',
              isSelected: currentIndex == 2,
            ),
            _buildBottomNavigationBarItem(
              iconPath: 'assets/icons/profile.svg',
              label: 'Profile',
              isSelected: currentIndex == 3,
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
  required String iconPath,
  required String label,
  required bool isSelected,
}) {
  return BottomNavigationBarItem(
    icon: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(6.0), 
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? AppColors.primary.withOpacity(0.2) : Colors.transparent,
          ),
          child: SvgPicture.asset(
            iconPath,
            height: 18,
            color: isSelected ? AppColors.primary : AppColors.greyColor,
          ),
        ),
      ],
    ),
    label: label,
  );
}

}
