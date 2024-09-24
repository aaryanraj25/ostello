import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:ostello/features/home/data/model/all_courses.dart';
import 'package:ostello/features/home/data/model/icon_container.dart';
import 'package:ostello/features/home/data/model/popular_course.dart';
import 'package:ostello/features/home/data/model/topper.dart';


final homeControllerProvider = Provider((ref) => HomeController());

class HomeController {

  List<IconContainer> getIconDataList() {
    return [
      const IconContainer(
        imagePath: 'assets/images/free_courses.png',
        label: 'Free Courses',
        borderColor: Color.fromRGBO(255, 249, 230, 1),
      ),
      const IconContainer(
        imagePath: 'assets/images/attendance.png',
        label: 'Attendance',
        borderColor: Color.fromRGBO(255, 249, 230, 1),
      ),
      const IconContainer(
        imagePath: 'assets/images/videos.png',
        label: 'Videos',
        borderColor: Color.fromRGBO(255, 249, 230, 1),
      ),
      const IconContainer(
        imagePath: 'assets/images/time_table.png',
        label: 'Time Table',
        borderColor: Color.fromRGBO(255, 249, 230, 1),
      ),
    ];
  }

  List<PopularCourse> getPopularCourses() {
    return [
      PopularCourse(
        instructorName: 'Mr. Sampath',
        imageUrl: 'assets/images/class_img.png',
        subject: 'Mathematics',
        className: 'Class 10th',
        isLive: true,
        isVerified: true,
      ),
      PopularCourse(
        instructorName: 'Mr. Tripathi',
        imageUrl: 'assets/images/class_img.png',
        subject: 'Science',
        className: 'Class 10th',
        isLive: true,
        isVerified: true,
      ),
      
    ];
  }
  List<Course> getAllCourses() {
    return [
      Course(
        instructorName: 'Mr. Sampath',
        imageUrl: 'assets/images/class_img.png',
        courseName: 'ARAMBH - NEET DROPPER BATCH',
        syllabus: 'Full Syllabus',
        forAspiring: 'For NEET 2025 & 2026 Aspirant',
        liveRecorded: 'Live + Recorded',
        batchStartDate: 'Batch starts on 16th Aug',
        discountedPrice: 5000,
        originalPrice: 10000,
        discountPercentage: 50,
        isVerified: true,
        isLive: true,
      ),
      Course(
        instructorName: 'Mr. Tripathi',
        imageUrl: 'assets/images/class_img.png',
        courseName: 'START - JEE DROPPER BATCH',
        syllabus: 'Full Syllabus',
        forAspiring: 'For JEE 2025 & 2026 Aspirant',
        liveRecorded: 'Live + Recorded',
        batchStartDate: 'Batch starts on 26th Aug',
        discountedPrice: 6000,
        originalPrice: 12000,
        discountPercentage: 50,
        isVerified: true,
        isLive: true,
      ),
     
    ];
  }

  List<TopperSection> getTopperSections() {
    return [
      TopperSection(
        title: 'NEET Toppers of Rajbir Institute',
        color: Colors.white,
        toppers: [
          Topper(name: 'Shree', imageUrl: 'assets/images/topper1.png', score: '720/720', institute: 'Rajbir Institute',),
          Topper(name: 'Shree', imageUrl: 'assets/images/topper2.png', score: '720/720', institute: 'Rajbir Institute',),
          Topper(name: 'Shree', imageUrl: 'assets/images/topper3.png', score: '720/720', institute: 'Rajbir Institute',),
          Topper(name: 'Shree', imageUrl: 'assets/images/topper4.png', score: '720/720', institute: 'Rajbir Institute',),
        ],
      ),
      TopperSection(
        title: '10th Class Toppers',
        color: Color.fromRGBO(252, 255, 245, 1),
        toppers: [
          Topper(name: 'Shree', imageUrl: 'assets/images/topper1.png', score: '720/720', institute: 'ABC School'),
          Topper(name: 'Shree', imageUrl: 'assets/images/topper2.png', score: '720/720', institute: 'ABC School'),
          Topper(name: 'Shree', imageUrl: 'assets/images/topper3.png', score: '720/720', institute: 'ABC School'),
          Topper(name: 'Shree', imageUrl: 'assets/images/topper4.png', score: '720/720', institute: 'ABC School'),
        ],
      ),
    ];
  }
}
