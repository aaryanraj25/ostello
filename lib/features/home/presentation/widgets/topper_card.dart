import 'package:flutter/material.dart';
import 'package:ostello/features/home/data/model/topper.dart';

class ToppersSectionWidget extends StatelessWidget {
  final List<TopperSection> topperSections;

  const ToppersSectionWidget({Key? key, required this.topperSections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170, 
      child: Row(
        children: topperSections.map((section) => TopperSectionCard(section: section)).toList(),
      ),
    );
  }
}

class TopperSectionCard extends StatelessWidget {
  final TopperSection section;

  const TopperSectionCard({Key? key, required this.section}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420, 
      height: 180, 
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: section.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromRGBO(255, 242, 226, 1),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4), 
            child: Text(
              section.title,
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: section.toppers.map((topper) {
                return Container(
                  width: 100, 
                  margin: const EdgeInsets.all(2), 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), 
                        child: Container(
                          width: 60, 
                          height: 60, 
                          child: Image.asset(
                            topper.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 0), 
                      Text(
                        topper.name,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        topper.score,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 12,
                          color: Color.fromRGBO(2, 156, 66, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}