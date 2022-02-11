import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    this.marginBottom = 0,
    required this.onPressed,

  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin:  EdgeInsetsDirectional.only(start: 20,
          end: 20,
          bottom: marginBottom
      ),
      child: ListTile(
        leading: Icon(leadingIcon),
        title:  Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        subtitle:  Text(
            subTitle
        ),
        trailing:IconButton(
            onPressed: onPressed,
            icon:  Icon(trailingIcon)) ,
      ),
    );
  }
}
