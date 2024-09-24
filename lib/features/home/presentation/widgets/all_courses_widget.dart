import 'package:flutter/material.dart';
import 'package:ostello/core/theme/app_colors.dart';
import 'package:ostello/core/theme/app_text_styles.dart';
import 'package:ostello/features/home/data/model/all_courses.dart';


class AllCourseCard extends StatelessWidget {
  final Course course;

  const AllCourseCard({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
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
                  style: AppTextStyles.body
                ),
                if (course.isVerified)
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Image.asset(
                      'assets/images/verified.png',
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
                      right: 12,
                      child: Text(
                        '• LIVE',
                        style: AppTextStyles.live,
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
                Text(
                  course.courseName,
                  style: AppTextStyles.body2
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _buildInfoItem(Icons.book, course.syllabus, ),
                    SizedBox(width: 16),
                    _buildInfoItem(Icons.person, course.forAspiring),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    _buildInfoItem(Icons.play_circle_outline, course.liveRecorded),
                    SizedBox(width: 16),
                    _buildInfoItem(Icons.calendar_today, course.batchStartDate),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      '₹ ${course.discountedPrice}',
                      style: AppTextStyles.body3
                    ),
                    SizedBox(width: 8),
                    Text(
                      '₹${course.originalPrice}',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 14,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '${course.discountPercentage}% OFF',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    // Handle join action
                  },
                  child: Text(
                    'Join',
                    style: AppTextStyles.buttonText,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.black),
        SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}