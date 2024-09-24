import 'package:flutter/material.dart';
import 'package:ostello/core/theme/app_text_styles.dart';

class JEEExamSectionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final String imagePath;
  final Color backgroundColor;
  final double imageWidth;  
  final double imageHeight; 
  
  const JEEExamSectionCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.imagePath,
    required this.backgroundColor,
    required this.imageWidth,  
    required this.imageHeight, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168, 
      width: 250, 
      padding: EdgeInsets.fromLTRB(16, 8, 8, 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                      maxLines: 2,  
                      overflow: TextOverflow.ellipsis, 
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: AppTextStyles.buttonText
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      ),
                    ),
                    Image.asset(
                      imagePath,
                      width: imageWidth, 
                      height: imageHeight, 
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
