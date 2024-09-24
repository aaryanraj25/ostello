import 'package:flutter/material.dart';

class IconContainer {
  final String imagePath; // Path to the asset image
  final String label;     // Text to be displayed below the image
  final Color borderColor; // Color of the border
  
  const IconContainer({
    required this.imagePath,
    required this.label,
    required this.borderColor,
  });
}