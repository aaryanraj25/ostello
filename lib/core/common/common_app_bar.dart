import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostello/core/theme/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final bool isOnline;
  final ValueChanged<bool> onToggle;

  const CommonAppBar({
    Key? key,
    required this.userName,
    required this.isOnline,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      toolbarHeight: 120,
      surfaceTintColor: Colors.transparent,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_image.png'),
                radius: 20,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hi, ',
                            style: TextStyle(fontFamily:'Avenir', color:  Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: userName,
                            style: TextStyle(fontFamily:'Avenir', color: AppColors.primary, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Better yourself each day everyday',
                      style: TextStyle(fontFamily:'Avenir', color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: SvgPicture.asset('assets/icons/notification.svg', height: 24),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 16),
          Center(child: _buildCustomSlider()),
        ],
      ),
    );
  }

  Widget _buildCustomSlider() {
    return Container(
      width: 328,
      height: 37,
      decoration: BoxDecoration(
        color: Color.fromRGBO(243, 243, 243, 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            left: isOnline ? 0 : 164,
            child: Container(
              width: 164,
              height: 37,
              decoration: BoxDecoration(
                color: AppColors.sliderColor,
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onToggle(true),
                  child: Center(
                    child: Text(
                      'Online',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        color: isOnline ? Colors.white : Color.fromRGBO(119, 119, 119, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onToggle(false),
                  child: Center(
                    child: Text(
                      'Offline',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        color: !isOnline ? Colors.white : Color.fromRGBO(119, 119, 119, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(130);
}