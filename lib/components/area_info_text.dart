import 'package:flutter/material.dart';

class AreaInfoText extends StatelessWidget {
  final double? widthAreaInfo;
  const AreaInfoText({
    Key? key,
    this.title,
    this.text, required this.widthAreaInfo,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: widthAreaInfo,
          ),
          Text(
            text!,
          ),
        ],
      )
    );
  }
}
