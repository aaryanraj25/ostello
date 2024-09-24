class Course {
  final String instructorName;
  final String imageUrl;
  final String courseName;
  final String syllabus;
  final String forAspiring;
  final String liveRecorded;
  final String batchStartDate;
  final int discountedPrice;
  final int originalPrice;
  final int discountPercentage;
  final bool isVerified;
  final bool isLive;

  Course({
    required this.instructorName,
    required this.imageUrl,
    required this.courseName,
    required this.syllabus,
    required this.forAspiring,
    required this.liveRecorded,
    required this.batchStartDate,
    required this.discountedPrice,
    required this.originalPrice,
    required this.discountPercentage,
    this.isVerified = false,
    this.isLive = false,
  });
}