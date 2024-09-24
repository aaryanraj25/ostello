import 'package:flutter/material.dart';
import 'package:ostello/features/home/data/model/icon_container.dart';


class IconContainerWidget extends StatelessWidget {
  final IconContainer iconContainer;

  const IconContainerWidget({Key? key, required this.iconContainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110, 
      height: 120, 
      decoration: BoxDecoration(
        border: Border.all(
          color: iconContainer.borderColor,
          width: 1, 
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconContainer.imagePath,
            width: 80, 
            height: 80, 
          ),
          SizedBox(height: 6), 
          Text(
            iconContainer.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 6) 
        ],
      ),
    );
  }
}
