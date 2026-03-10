import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? backGroundColor;
  final String? text;
  final Widget? label;

  const MyButton({super.key, this.backGroundColor, this.label , this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: backGroundColor ?? Color(0xFFEB6A58),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Center(
        child:
            label ??
            Text(
              text??'',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
            ),
      ),
    );
  }
}
