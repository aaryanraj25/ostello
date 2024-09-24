import 'package:flutter/material.dart';
import 'package:ostello/core/theme/app_text_styles.dart';

class ReferralWidget extends StatelessWidget {
  const ReferralWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, 
      height: 200,
      color: const Color.fromRGBO(255, 237, 237, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start, 
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
         
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    'Refer & Earn',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Cashback & Rewards',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Invite Your Friends & Get Up to ₹500 After Registration',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle invite action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    ),
                    child: Text(
                      'Invite',
                      style: AppTextStyles.buttonText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildPersonImage('assets/images/refferal.png'),
        ],
      ),
    );
  }

  Widget _buildPersonImage(String assetPath) {
    return Container(
      width: 140, 
      height: 140, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
