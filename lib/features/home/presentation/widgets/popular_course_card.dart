import 'package:flutter/material.dart';
import 'package:ostello/core/theme/app_colors.dart';
import 'package:ostello/core/theme/app_text_styles.dart';
import 'package:ostello/features/home/data/model/popular_course.dart';


class PopularCourseCard extends StatelessWidget {
  final PopularCourse course;

  const PopularCourseCard({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Text(
                  course.instructorName,
                  style: AppTextStyles.body,
                ),
                if (course.isVerified)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Image.asset(
                      'assets/images/verified.png', // Update with your SVG path
                      height: 20,
                      width: 20,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 2),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: AspectRatio(
              aspectRatio: 19 / 9, 
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (course.isLive)
                    Positioned(
                      top: 10, 
                      left: 12, 
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.7), 
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Hinglish',
                          style: AppTextStyles.subheading,
                        ),
                      ),
                    ),
                  if (course.isLive)
                    Positioned(
                      bottom: 10, 
                      right: 20, 
                      child: 
                        Text(
                          '• LIVE',
                          style: AppTextStyles.live
                        ),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    '${course.className} - ${course.subject}',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    // Handle join action
                  },
                  child: Text('Join',
                  style: AppTextStyles.buttonText),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    minimumSize: const Size(double.infinity, 40),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
