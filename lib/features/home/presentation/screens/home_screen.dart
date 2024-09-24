import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ostello/core/common/common_app_bar.dart';
import 'package:ostello/core/theme/app_text_styles.dart';
import 'package:ostello/features/home/data/model/icon_container.dart';
import 'package:ostello/features/home/presentation/controller/home_controller.dart';
import 'package:ostello/features/home/presentation/controller/online_status_provider.dart';
import 'package:ostello/features/home/presentation/widgets/all_courses_widget.dart';
import 'package:ostello/features/home/presentation/widgets/icon_container.dart';
import 'package:ostello/features/home/presentation/widgets/popular_course_card.dart';
import 'package:ostello/features/home/presentation/widgets/refferal_widget.dart';
import 'package:ostello/features/home/presentation/widgets/topper_card.dart';
import '../widgets/section_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeControllerProvider);
    final isOnline = ref.watch(onlineStatusProvider);
    final onlineStatusNotifier = ref.read(onlineStatusProvider.notifier);
    final popularCourses = homeState.getPopularCourses();
    final allCourses = homeState.getAllCourses();
    final topperSections = homeState.getTopperSections();
    final iconDataList = homeState.getIconDataList();

    List<Widget> _buildIconContainers(List<IconContainer> iconDataList) {
      return iconDataList.expand((iconContainer) {
        return [
          IconContainerWidget(iconContainer: iconContainer),
          const SizedBox(width: 16), 
        ];
      }).toList()
        ..removeLast(); 
    }

    return Scaffold(
      appBar: CommonAppBar(
        userName: 'Krishna',
        isOnline: isOnline,
        onToggle: (value) => onlineStatusNotifier.toggleOnlineStatus(value),
      ),
      body: Container(
        color: Colors.grey[50],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      JEEExamSectionCard(
                        title: 'Live Sections on JEE \nExams',
                        subtitle: 'Join live sections on JEE Exams',
                        buttonText: 'Join',
                        imagePath: 'assets/images/student_laptop.png',
                        backgroundColor: const Color.fromRGBO(247, 226, 165, 1),
                        imageWidth: 100,
                        imageHeight: 75,
                      ),
                      const SizedBox(width: 16),
                      JEEExamSectionCard(
                        title: 'Free Courses',
                        subtitle: 'Live Sections on JEE \nExams ',
                        buttonText: 'Join',
                        imagePath: 'assets/images/student_side.png',
                        backgroundColor: const Color.fromRGBO(254, 209, 186, 1),
                        imageWidth: 80,
                        imageHeight: 75,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: _buildIconContainers(iconDataList),
                  ),
                ),
                const SizedBox(height: 24),

                // Toppers Section Header
                Text(
                  'Toppers of ABC',
                  style: AppTextStyles.heading,
                ),
                const SizedBox(height: 16),

                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ToppersSectionWidget(topperSections: topperSections),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Popular Courses Section Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Courses',
                      style: AppTextStyles.heading,
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle "View All" action
                      },
                      child: Text(
                        'View All',
                        style: AppTextStyles.viewAll,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: popularCourses
                        .map((course) => Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: PopularCourseCard(course: course),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 16),

                // All Courses Section Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Courses',
                      style: AppTextStyles.heading,
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle "View All" action
                      },
                      child: Text(
                        'View All',
                        style: AppTextStyles.viewAll,

                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: allCourses.map((course) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: AllCourseCard(course: course),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 40),

                // ReferralWidget with full width
                Row(
                  children: [
                    Expanded( // Ensures full width
                      child: const ReferralWidget(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
