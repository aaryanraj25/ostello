class PopularCourse {
  final String instructorName;
  final String imageUrl;
  final String subject;
  final String className;
  final bool isLive;
  final bool isVerified;

  PopularCourse({
    required this.instructorName,
    required this.imageUrl,
    required this.subject,
    required this.className,
    this.isLive = false,
    this.isVerified = false,
  });
}