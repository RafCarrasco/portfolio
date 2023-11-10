import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
      width: 500,
      height: 355,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFF242430),
      ),
      child: const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SizedBox(height: 18,),
              Text(
                "Coding",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18
                  ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
            AnimatedLinearProgressIndicator(
              percentage: 0.7,
              label: "Dart/Flutter",
            ),
            AnimatedLinearProgressIndicator(
              percentage: 0.68,
              label: "Python",
            ),
            AnimatedLinearProgressIndicator(
              percentage: 0.9,
              label: "HTML",
            ),
            AnimatedLinearProgressIndicator(
              percentage: 0.75,
              label: "CSS",
            ),
            AnimatedLinearProgressIndicator(
              percentage: 0.58,
              label: "JavaScript",
            ),
          ],
        ),
      ),
    );
  }
}
