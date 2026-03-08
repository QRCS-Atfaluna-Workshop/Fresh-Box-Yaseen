import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Icon? leadingIcon;
  final Icon? actionIcon;

  const MyAppBar({super.key, this.title,this.leadingIcon, this.actionIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title! , style: TextStyle(
        color: Color(0xFF040C22),
            fontWeight: FontWeight.w500,
            fontSize: 21,
      ),),
      actionsPadding: EdgeInsetsDirectional.only(end: 16),
      centerTitle: true,
      leadingWidth: 70,
      leading: Container(
        margin: EdgeInsetsDirectional.only(start: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
            )
          ],
        ),
        child: Center(
          child: leadingIcon,
        ),
      ),
      actions: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
              )
            ],
          ),
          child: Center(
            child: actionIcon,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(68.0);
}
