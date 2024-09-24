import 'package:flutter/material.dart';

class Topper {
  final String name;
  final String imageUrl;
  final String score;
  final String institute;
  

  Topper({
    required this.name,
    required this.imageUrl,
    required this.score,
    required this.institute,
  });
}

class TopperSection {
  final String title;
  final List<Topper> toppers;
  final Color color;

  TopperSection({
    required this.title,
    required this.toppers,
    required this.color,
  });
}